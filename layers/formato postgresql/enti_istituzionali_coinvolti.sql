SET standard_conforming_strings = ON;
DROP TABLE IF EXISTS "qwc_geodb"."enti_istituzionali_coinvolti" CASCADE;
BEGIN;
CREATE TABLE "qwc_geodb"."enti_istituzionali_coinvolti"();
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "ogc_fid" SERIAL CONSTRAINT "enti_istituzionali_coinvolti_pk" PRIMARY KEY;
SELECT AddGeometryColumn('qwc_geodb','enti_istituzionali_coinvolti','wkb_geometry',4326,'POINT',2);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "fid" NUMERIC(20,0);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "nome_ente_segnalatore" VARCHAR(100);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "comune_interessato" VARCHAR(100);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "responsabile_uff" VARCHAR(100);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "tel_fisso_resp_uff" VARCHAR(12);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "tel_mobile_resp_uff" VARCHAR(14);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "pec_resp" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "mail_resp" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "indirizzo_ufficio_resp" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "referente" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "tel_fisso_referente_1" VARCHAR(12);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "tel_mobile_referente_1" VARCHAR(14);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "pec_referente_1" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "mail_referente_1" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "indirizzo_ufficio_referente_1" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "referente_2" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "tel_fisso_referente_2" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "tel_mobile_referente_2" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "pec_referente_2" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "mail_referente_2" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "indirizzo_ufficio_referente_2" VARCHAR(50);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "data_prima_richiesta" timestamp with time zone;
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "scadenza_prima_richiesta" timestamp with time zone;
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "note" VARCHAR(200);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "token" VARCHAR(200);
ALTER TABLE "qwc_geodb"."enti_istituzionali_coinvolti" ADD COLUMN "ora_inserimento" timestamp with time zone;
CREATE INDEX "enti_istituzionali_coinvolti_wkb_geometry_geom_idx" ON "qwc_geodb"."enti_istituzionali_coinvolti" USING GIST ("wkb_geometry");
COMMIT;
