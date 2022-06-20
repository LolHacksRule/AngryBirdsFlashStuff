package §'#f§
{
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §!!t§.§'8§;
   import §%#v§.§?!F§;
   import §+#B§.§+$A§;
   import §4!n§.§#$>§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import flash.display.MovieClip;
   
   public class §!!"§ implements §<#'§
   {
      
      public static const §1"2§:String = "STARS_COLLECTION";
       
      
      private var §2!_§:int;
      
      private var §?!%§:int;
      
      private var §!!`§:int;
      
      private var §6!g§:int;
      
      private var §07§:int;
      
      private var §+J§:Vector.<§0#<§>;
      
      private var §5#`§:Array;
      
      private var §%!p§:§#$>§;
      
      private var §<"_§:MovieClip;
      
      public function §!!"§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §1"2§;
      }
      
      public function §%6§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§-!c§();
         if(!param1)
         {
            return;
         }
         this.§2!_§ = param1.et;
         this.§!!`§ = param1.ec;
         this.§?!%§ = param1.ct;
         this.§6!g§ = param1.cc;
         this.§07§ = 0;
         for each(_loc2_ in param1.p)
         {
            this.§+J§.push(new §0#<§(_loc2_));
            if(_loc2_.c > this.§07§)
            {
               this.§07§ = _loc2_.c;
            }
         }
         this.§0!R§(param1.cp);
         §'8§.§`"O§();
      }
      
      public function §-!c§() : void
      {
         this.§2!_§ = 0;
         this.§?!%§ = 0;
         this.§!!`§ = 0;
         this.§6!g§ = 0;
         this.§5#`§ = new Array();
         this.§+J§ = new Vector.<§0#<§>();
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
      }
      
      public function §,"&§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(§%#§.NORMAL,§9#5§.DEFAULT));
         return true;
      }
      
      public function §!t§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
         return true;
      }
      
      public function §^!;§(param1:§?!F§) : void
      {
         this.§%!p§ = param1.getItemByName("Button_StarCollector");
         this.§<"_§ = this.§%!p§.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function §8"4§() : void
      {
         if(this.§%!p§ != null)
         {
            if(this.§[-§())
            {
               this.§<"_§.gotoAndPlay(1);
            }
            else
            {
               this.§<"_§.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "STAR_COLLECTOR":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§,"&§();
               §+$A§.§@"i§().§5!-§(§+$A§.§,!!§,this.§[-§());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.§<"_§.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.§[-§())
               {
                  this.§<"_§.gotoAndPlay(1);
                  break;
               }
         }
      }
      
      public function §%$#§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%!p§ != null)
         {
            this.§%!p§.x = param1;
            this.§%!p§.y = param2;
            if(this.§%!p§.visible)
            {
               if(!§1"9§.§?q§.§-"?§())
               {
                  this.§%!p§.setVisibility(false);
               }
            }
            else if(§1"9§.§?q§.§-"?§())
            {
               this.§%!p§.setVisibility(true);
            }
         }
      }
      
      public function get § if§() : int
      {
         return this.§2!_§;
      }
      
      public function get §%!<§() : int
      {
         return this.§?!%§;
      }
      
      public function get §>$A§() : int
      {
         return this.§!!`§;
      }
      
      public function get §]"#§() : int
      {
         return this.§07§;
      }
      
      public function §9#x§(param1:int) : void
      {
         var _loc2_:§0#<§ = this.§1"`§();
         if(this.§!!`§ < _loc2_.starsNeeded && this.§!!`§ + param1 >= _loc2_.starsNeeded)
         {
            this.§@!@§(_loc2_.ID);
         }
         this.§!!`§ += param1;
      }
      
      public function get §"#d§() : int
      {
         return this.§6!g§;
      }
      
      public function §[!2§(param1:int) : §0#<§
      {
         if(this.§+J§ && param1 < this.§+J§.length)
         {
            return this.§+J§[param1];
         }
         return null;
      }
      
      public function §+L§(param1:int) : §0#<§
      {
         var _loc2_:int = 0;
         if(this.§+J§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§+J§.length)
            {
               if(this.§+J§[_loc2_].ID == param1)
               {
                  return this.§+J§[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function §@!@§(param1:int) : void
      {
         if(this.§5#`§)
         {
            this.§5#`§.push("" + param1);
         }
         else
         {
            this.§5#`§ = ["" + param1];
         }
      }
      
      public function §0!R§(param1:Array) : void
      {
         this.§5#`§ = param1;
      }
      
      public function §[-§() : Boolean
      {
         return this.§5#`§ && this.§5#`§.length > 0;
      }
      
      public function §=!f§(param1:int) : Boolean
      {
         if(this.§5#`§ && this.§5#`§.length > 0)
         {
            return this.§5#`§.indexOf("" + param1) > -1;
         }
         return false;
      }
      
      public function §1"`§() : §0#<§
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+J§.length)
         {
            if(this.§!!`§ < this.§+J§[_loc2_].starsNeeded)
            {
               _loc1_ = _loc2_;
               break;
            }
            if(this.§!!`§ == this.§+J§[_loc2_].starsNeeded)
            {
               if(this.§=!f§(this.§+J§[_loc2_].ID))
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            else if(this.§=!f§(this.§+J§[_loc2_].ID))
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         return this.§+J§[_loc1_];
      }
   }
}
