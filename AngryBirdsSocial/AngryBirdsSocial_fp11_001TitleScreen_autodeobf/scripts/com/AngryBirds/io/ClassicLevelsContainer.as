package com.AngryBirds.io
{
   import com.rovio.factory.EmbedFileFactory;
   
   public class ClassicLevelsContainer
   {
      
      public static var singleton:ClassicLevelsContainer;
       
      
      private var level1:Class;
      
      private var level2:Class;
      
      private var level3:Class;
      
      private var level4:Class;
      
      private var level5:Class;
      
      private var level6:Class;
      
      private var level7:Class;
      
      private var level8:Class;
      
      private var level9:Class;
      
      private var level10:Class;
      
      private var level11:Class;
      
      private var level12:Class;
      
      private var level13:Class;
      
      private var level14:Class;
      
      private var level15:Class;
      
      private var level16:Class;
      
      private var level17:Class;
      
      private var level18:Class;
      
      private var level19:Class;
      
      private var level20:Class;
      
      private var level21:Class;
      
      private var level22:Class;
      
      private var level23:Class;
      
      private var level24:Class;
      
      private var level25:Class;
      
      private var level26:Class;
      
      private var level27:Class;
      
      private var level28:Class;
      
      private var level29:Class;
      
      private var level30:Class;
      
      private var level31:Class;
      
      private var level32:Class;
      
      private var level33:Class;
      
      private var level34:Class;
      
      private var level35:Class;
      
      private var level36:Class;
      
      private var level37:Class;
      
      private var level38:Class;
      
      private var level39:Class;
      
      private var level40:Class;
      
      private var level41:Class;
      
      private var level42:Class;
      
      private var level43:Class;
      
      private var level44:Class;
      
      private var level45:Class;
      
      private var level46:Class;
      
      private var level47:Class;
      
      private var level48:Class;
      
      private var level49:Class;
      
      private var level50:Class;
      
      private var level51:Class;
      
      private var level52:Class;
      
      private var level53:Class;
      
      private var level54:Class;
      
      private var level55:Class;
      
      private var level56:Class;
      
      private var level57:Class;
      
      private var level58:Class;
      
      private var level59:Class;
      
      private var level60:Class;
      
      private var level61:Class;
      
      private var level62:Class;
      
      private var level63:Class;
      
      private var data:Array = null;
      
      public function ClassicLevelsContainer()
      {
         this.level1 = ClassicLevelsContainer_level1;
         this.level2 = ClassicLevelsContainer_level2;
         this.level3 = ClassicLevelsContainer_level3;
         this.level4 = ClassicLevelsContainer_level4;
         this.level5 = ClassicLevelsContainer_level5;
         this.level6 = ClassicLevelsContainer_level6;
         this.level7 = ClassicLevelsContainer_level7;
         this.level8 = ClassicLevelsContainer_level8;
         this.level9 = ClassicLevelsContainer_level9;
         this.level10 = ClassicLevelsContainer_level10;
         this.level11 = ClassicLevelsContainer_level11;
         this.level12 = ClassicLevelsContainer_level12;
         this.level13 = ClassicLevelsContainer_level13;
         this.level14 = ClassicLevelsContainer_level14;
         this.level15 = ClassicLevelsContainer_level15;
         this.level16 = ClassicLevelsContainer_level16;
         this.level17 = ClassicLevelsContainer_level17;
         this.level18 = ClassicLevelsContainer_level18;
         this.level19 = ClassicLevelsContainer_level19;
         this.level20 = ClassicLevelsContainer_level20;
         this.level21 = ClassicLevelsContainer_level21;
         this.level22 = ClassicLevelsContainer_level22;
         this.level23 = ClassicLevelsContainer_level23;
         this.level24 = ClassicLevelsContainer_level24;
         this.level25 = ClassicLevelsContainer_level25;
         this.level26 = ClassicLevelsContainer_level26;
         this.level27 = ClassicLevelsContainer_level27;
         this.level28 = ClassicLevelsContainer_level28;
         this.level29 = ClassicLevelsContainer_level29;
         this.level30 = ClassicLevelsContainer_level30;
         this.level31 = ClassicLevelsContainer_level31;
         this.level32 = ClassicLevelsContainer_level32;
         this.level33 = ClassicLevelsContainer_level33;
         this.level34 = ClassicLevelsContainer_level34;
         this.level35 = ClassicLevelsContainer_level35;
         this.level36 = ClassicLevelsContainer_level36;
         this.level37 = ClassicLevelsContainer_level37;
         this.level38 = ClassicLevelsContainer_level38;
         this.level39 = ClassicLevelsContainer_level39;
         this.level40 = ClassicLevelsContainer_level40;
         this.level41 = ClassicLevelsContainer_level41;
         this.level42 = ClassicLevelsContainer_level42;
         this.level43 = ClassicLevelsContainer_level43;
         this.level44 = ClassicLevelsContainer_level44;
         this.level45 = ClassicLevelsContainer_level45;
         this.level46 = ClassicLevelsContainer_level46;
         this.level47 = ClassicLevelsContainer_level47;
         this.level48 = ClassicLevelsContainer_level48;
         this.level49 = ClassicLevelsContainer_level49;
         this.level50 = ClassicLevelsContainer_level50;
         this.level51 = ClassicLevelsContainer_level51;
         this.level52 = ClassicLevelsContainer_level52;
         this.level53 = ClassicLevelsContainer_level53;
         this.level54 = ClassicLevelsContainer_level54;
         this.level55 = ClassicLevelsContainer_level55;
         this.level56 = ClassicLevelsContainer_level56;
         this.level57 = ClassicLevelsContainer_level57;
         this.level58 = ClassicLevelsContainer_level58;
         this.level59 = ClassicLevelsContainer_level59;
         this.level60 = ClassicLevelsContainer_level60;
         this.level61 = ClassicLevelsContainer_level61;
         this.level62 = ClassicLevelsContainer_level62;
         this.level63 = ClassicLevelsContainer_level63;
         super();
         this.data = new Array();
         var _loc1_:Number = 1;
         while(_loc1_ <= 63)
         {
            this.data.push("level" + _loc1_);
            _loc1_++;
         }
         singleton = this;
      }
      
      public static function getSingleton() : ClassicLevelsContainer
      {
         if(singleton == null)
         {
            singleton = new ClassicLevelsContainer();
         }
         return singleton;
      }
      
      public static function generateActionScript(param1:int) : void
      {
         var _loc2_:Number = 1;
         while(_loc2_ <= param1)
         {
            trace("[Embed(source=\"../embedded_assets/levels/Level" + _loc2_ + ".json\", mimeType=\"application/octet-stream\")]");
            trace("private var level" + _loc2_ + ":Class;");
            _loc2_++;
         }
      }
      
      private function getLevel(param1:String) : String
      {
         return EmbedFileFactory.fromOctetStreamClass(this[param1]);
      }
      
      public function getNextLevel() : String
      {
         return this.getLevel(this.data.shift());
      }
   }
}
