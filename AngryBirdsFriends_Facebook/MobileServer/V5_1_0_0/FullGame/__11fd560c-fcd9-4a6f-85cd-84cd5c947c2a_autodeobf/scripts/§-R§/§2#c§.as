package §-R§
{
   import § %§.§0"8§;
   import §1!=§.§^"U§;
   import §3#T§.§@"!§;
   import §9#B§.§=!L§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §`7§.§ try§;
   import flash.display.MovieClip;
   
   public class §2#c§ implements §<"T§
   {
      
      public static const §^^§:String = "STARS_COLLECTION";
       
      
      private var §5"0§:int;
      
      private var §?#u§:int;
      
      private var §2v§:int;
      
      private var § `§:int;
      
      private var §^#D§:int;
      
      private var §6!m§:Vector.<§[#X§>;
      
      private var §`w§:Array;
      
      private var § !V§:§@"!§;
      
      private var §9q§:MovieClip;
      
      public function §2#c§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §^^§;
      }
      
      public function §>#<§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§=#"§();
         if(!param1)
         {
            return;
         }
         this.§5"0§ = param1.et;
         this.§2v§ = param1.ec;
         this.§?#u§ = param1.ct;
         this.§ `§ = param1.cc;
         this.§^#D§ = 0;
         for each(_loc2_ in param1.p)
         {
            this.§6!m§.push(new §[#X§(_loc2_));
            if(_loc2_.c > this.§^#D§)
            {
               this.§^#D§ = _loc2_.c;
            }
         }
         this.§?"^§(param1.cp);
         §=!L§.§4K§();
      }
      
      public function §=#"§() : void
      {
         this.§5"0§ = 0;
         this.§?#u§ = 0;
         this.§2v§ = 0;
         this.§ `§ = 0;
         this.§`w§ = new Array();
         this.§6!m§ = new Vector.<§[#X§>();
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §4b§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(§]"$§.NORMAL,§^"U§.DEFAULT));
         return true;
      }
      
      public function §%O§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
         return true;
      }
      
      public function §7$+§(param1:§0"8§) : void
      {
         this.§ !V§ = param1.getItemByName("Button_StarCollector");
         this.§9q§ = this.§ !V§.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function §]"A§() : void
      {
         if(this.§ !V§ != null)
         {
            if(this.§17§())
            {
               this.§9q§.gotoAndPlay(1);
            }
            else
            {
               this.§9q§.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "STAR_COLLECTOR":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§4b§();
               § try§.§!!t§().§[#]§(§ try§.§^!X§,this.§17§());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.§9q§.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.§17§())
               {
                  this.§9q§.gotoAndPlay(1);
               }
         }
      }
      
      public function §3#E§(param1:Number, param2:Number) : void
      {
         if(this.§ !V§ != null)
         {
            this.§ !V§.x = param1;
            this.§ !V§.y = param2;
            if(this.§ !V§.visible)
            {
               if(!§`"O§.§6!§.§8!>§())
               {
                  this.§ !V§.setVisibility(false);
               }
            }
            else if(§`"O§.§6!§.§8!>§())
            {
               this.§ !V§.setVisibility(true);
            }
         }
      }
      
      public function get §!"K§() : int
      {
         return this.§5"0§;
      }
      
      public function get §5!S§() : int
      {
         return this.§?#u§;
      }
      
      public function get §-j§() : int
      {
         return this.§2v§;
      }
      
      public function get §1,§() : int
      {
         return this.§^#D§;
      }
      
      public function §0f§(param1:int) : void
      {
         var _loc2_:§[#X§ = this.§+"R§();
         if(this.§2v§ < _loc2_.starsNeeded && this.§2v§ + param1 >= _loc2_.starsNeeded)
         {
            this.§1$%§(_loc2_.ID);
         }
         this.§2v§ += param1;
      }
      
      public function get §`t§() : int
      {
         return this.§ `§;
      }
      
      public function §+!l§(param1:int) : §[#X§
      {
         if(this.§6!m§ && param1 < this.§6!m§.length)
         {
            return this.§6!m§[param1];
         }
         return null;
      }
      
      public function §!1§(param1:int) : §[#X§
      {
         var _loc2_:int = 0;
         if(this.§6!m§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6!m§.length)
            {
               if(this.§6!m§[_loc2_].ID == param1)
               {
                  return this.§6!m§[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function §1$%§(param1:int) : void
      {
         if(this.§`w§)
         {
            this.§`w§.push("" + param1);
         }
         else
         {
            this.§`w§ = ["" + param1];
         }
      }
      
      public function §?"^§(param1:Array) : void
      {
         this.§`w§ = param1;
      }
      
      public function §17§() : Boolean
      {
         return this.§`w§ && this.§`w§.length > 0;
      }
      
      public function §^A§(param1:int) : Boolean
      {
         if(this.§`w§ && this.§`w§.length > 0)
         {
            return this.§`w§.indexOf("" + param1) > -1;
         }
         return false;
      }
      
      public function §+"R§() : §[#X§
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!m§.length)
         {
            if(this.§2v§ < this.§6!m§[_loc2_].starsNeeded)
            {
               _loc1_ = _loc2_;
               break;
            }
            if(this.§2v§ == this.§6!m§[_loc2_].starsNeeded)
            {
               if(this.§^A§(this.§6!m§[_loc2_].ID))
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            else if(this.§^A§(this.§6!m§[_loc2_].ID))
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         return this.§6!m§[_loc1_];
      }
   }
}
