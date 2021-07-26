package §""p§
{
   import § $0§.§5R§;
   import §!!L§.§ !8§;
   import §";§.§%"X§;
   import §#"4§.§3";§;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §^"3§.§^"C§;
   import flash.display.MovieClip;
   
   public class §6"Z§ implements §-!4§
   {
      
      public static const §in §:String = "STARS_COLLECTION";
       
      
      private var §%w§:int;
      
      private var § #z§:int;
      
      private var §9'§:int;
      
      private var §-!V§:int;
      
      private var §[$&§:int;
      
      private var §'"3§:Vector.<§!Q§>;
      
      private var §3"2§:Array;
      
      private var §%"7§:§^"C§;
      
      private var §-b§:MovieClip;
      
      public function §6"Z§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §in §;
      }
      
      public function §8#y§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§&!8§();
         if(!param1)
         {
            return;
         }
         this.§%w§ = param1.et;
         this.§9'§ = param1.ec;
         this.§ #z§ = param1.ct;
         this.§-!V§ = param1.cc;
         this.§[$&§ = 0;
         for each(_loc2_ in param1.p)
         {
            this.§'"3§.push(new §!Q§(_loc2_));
            if(_loc2_.c > this.§[$&§)
            {
               this.§[$&§ = _loc2_.c;
            }
         }
         this.§"#d§(param1.cp);
         § !8§.§>#_§();
      }
      
      public function §&!8§() : void
      {
         this.§%w§ = 0;
         this.§ #z§ = 0;
         this.§9'§ = 0;
         this.§-!V§ = 0;
         this.§3"2§ = new Array();
         this.§'"3§ = new Vector.<§!Q§>();
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(false);
         }
      }
      
      public function §#^§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(§@#D§.NORMAL,§5R§.DEFAULT));
         return true;
      }
      
      public function §5$%§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§@#D§.INFO,§5R§.DEFAULT));
         return true;
      }
      
      public function §]#F§(param1:§%"X§) : void
      {
         this.§%"7§ = param1.getItemByName("Button_StarCollector");
         this.§-b§ = this.§%"7§.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function §=1§() : void
      {
         if(this.§%"7§ != null)
         {
            if(this.§%m§())
            {
               this.§-b§.gotoAndPlay(1);
            }
            else
            {
               this.§-b§.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "STAR_COLLECTOR":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§#^§();
               §3";§.§#"'§().§4#q§(§3";§.§9!+§,this.§%m§());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.§-b§.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.§%m§())
               {
                  this.§-b§.gotoAndPlay(1);
               }
         }
      }
      
      public function §="!§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%"7§ != null)
         {
            this.§%"7§.x = param1;
            this.§%"7§.y = param2;
            if(this.§%"7§.visible)
            {
               if(!§ #F§.§+!,§.§1#@§())
               {
                  this.§%"7§.setVisibility(false);
               }
            }
            else if(§ #F§.§+!,§.§1#@§())
            {
               this.§%"7§.setVisibility(true);
            }
         }
      }
      
      public function get §6#8§() : int
      {
         return this.§%w§;
      }
      
      public function get §-#y§() : int
      {
         return this.§ #z§;
      }
      
      public function get §0"S§() : int
      {
         return this.§9'§;
      }
      
      public function get §<"X§() : int
      {
         return this.§[$&§;
      }
      
      public function §3H§(param1:int) : void
      {
         var _loc2_:§!Q§ = this.§-#&§();
         if(this.§9'§ < _loc2_.starsNeeded && this.§9'§ + param1 >= _loc2_.starsNeeded)
         {
            this.§@!R§(_loc2_.ID);
         }
         this.§9'§ += param1;
      }
      
      public function get §8!P§() : int
      {
         return this.§-!V§;
      }
      
      public function §2#4§(param1:int) : §!Q§
      {
         if(this.§'"3§ && param1 < this.§'"3§.length)
         {
            return this.§'"3§[param1];
         }
         return null;
      }
      
      public function §%#g§(param1:int) : §!Q§
      {
         var _loc2_:int = 0;
         if(this.§'"3§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§'"3§.length)
            {
               if(this.§'"3§[_loc2_].ID == param1)
               {
                  return this.§'"3§[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function §@!R§(param1:int) : void
      {
         if(this.§3"2§)
         {
            this.§3"2§.push("" + param1);
         }
         else
         {
            this.§3"2§ = ["" + param1];
         }
      }
      
      public function §"#d§(param1:Array) : void
      {
         this.§3"2§ = param1;
      }
      
      public function §%m§() : Boolean
      {
         return this.§3"2§ && this.§3"2§.length > 0;
      }
      
      public function §-#M§(param1:int) : Boolean
      {
         if(this.§3"2§ && this.§3"2§.length > 0)
         {
            return this.§3"2§.indexOf("" + param1) > -1;
         }
         return false;
      }
      
      public function §-#&§() : §!Q§
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'"3§.length)
         {
            if(this.§9'§ < this.§'"3§[_loc2_].starsNeeded)
            {
               _loc1_ = _loc2_;
               break;
            }
            if(this.§9'§ == this.§'"3§[_loc2_].starsNeeded)
            {
               if(this.§-#M§(this.§'"3§[_loc2_].ID))
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            else if(this.§-#M§(this.§'"3§[_loc2_].ID))
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         return this.§'"3§[_loc1_];
      }
   }
}
