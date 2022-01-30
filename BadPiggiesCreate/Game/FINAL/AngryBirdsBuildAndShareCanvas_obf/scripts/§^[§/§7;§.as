package §^[§
{
   import §&"5§.§7!P§;
   import §'!A§.§-!2§;
   import §'!A§.§9!!§;
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §9=§.§0!5§;
   import §9=§.§=!k§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §7;§
   {
      
      private static const §=_§:int = 20;
       
      
      private var §4c§:§="#§;
      
      private var § !B§:§7;§;
      
      private var §!!A§:Vector.<§7;§>;
      
      private var §"!_§:Vector.<§!$§>;
      
      private var §8k§:int = 0;
      
      private var §+!e§:§`!T§;
      
      private var §0^§:Vector.<§-!2§>;
      
      private var §6"?§:§[@§;
      
      private var §-%§:DisplayObject;
      
      private var §?!O§:int = 2147483647;
      
      public function §7;§(param1:§`!T§, param2:§="#§ = null)
      {
         this.§!!A§ = new Vector.<§7;§>();
         this.§"!_§ = new Vector.<§!$§>();
         this.§0^§ = new Vector.<§-!2§>();
         super();
         this.§+!e§ = param1;
         this.§4c§ = param2;
         if(this.§4c§)
         {
            this.§4c§.setVisibility(false);
         }
      }
      
      public function §@q§(param1:String) : void
      {
         var _loc3_:§=!k§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§!$§ = null;
         var _loc8_:String = null;
         var _loc9_:§]!>§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §<!m§.§1C§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §0!5§.§]`§)
            {
               if(_loc4_ = §>!]§.§1!8§(_loc3_.§2!m§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §!$§(_loc3_.mName,this.§+!e§,_loc5_,true);
                  this.§"!_§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §<!m§.§"!F§(_loc8_)) && param1 == _loc9_.§=!_§)
               {
                  _loc10_ = §7!P§.§2=§.§"k§(_loc9_.§!F§);
                  _loc7_ = new §!$§(_loc8_,this.§+!e§,new Bitmap(_loc10_,"auto",true));
                  this.§"!_§.push(_loc7_);
                  _loc7_.§&"4§(0);
               }
            }
         }
      }
      
      public function §9%§(param1:String, param2:Number = 1, param3:Number = 2147483647) : void
      {
         var _loc5_:BitmapData = null;
         var _loc6_:§!$§ = null;
         if(param3 < this.§?!O§)
         {
            this.§?!O§ = param3;
         }
         var _loc4_:§]!>§;
         if(_loc4_ = §<!m§.§"!F§(param1))
         {
            _loc5_ = §7!P§.§2=§.§"k§(_loc4_.§!F§);
            _loc6_ = new §!$§(param1,this.§+!e§,new Bitmap(_loc5_,"auto",true),false,param2,param3);
            this.§"!_§.push(_loc6_);
            _loc6_.§&"4§(0);
         }
      }
      
      public function §9K§(param1:String) : void
      {
         var _loc2_:int = this.§"!_§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§"!_§[_loc2_].getItemName() == param1)
            {
               this.§"!_§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §3!%§(param1:§="#§) : §7;§
      {
         var _loc2_:§7;§ = null;
         _loc2_ = new §7;§(this.§+!e§,param1);
         this.§!!A§.push(_loc2_);
         if(this.§ !B§ == null)
         {
            this.§ !B§ = this.§!!A§[0];
         }
         return _loc2_;
      }
      
      public function §;!R§(param1:§-!2§) : void
      {
         this.§0^§.push(param1);
      }
      
      private function §1!&§() : Boolean
      {
         return this.§4c§.§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §&H§() : Boolean
      {
         if(this.§4c§ && !this.§1!&§())
         {
            return false;
         }
         if(this.§ !B§)
         {
            return this.§ !B§.§&H§();
         }
         return true;
      }
      
      public function §&"6§() : String
      {
         if(this.§4c§ && !this.§1!&§())
         {
            return null;
         }
         if(this.§ !B§)
         {
            return this.§ !B§.§&"6§();
         }
         if(!this.§4c§)
         {
            return null;
         }
         return this.§4c§.mName;
      }
      
      public function §9!%§() : void
      {
         if(this.§4c§)
         {
            if(this.§6"?§)
            {
               this.§6"?§.§0k§(this.§4c§.mClip);
            }
            if(this.§4c§.§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§4c§.setComponentState(§9!!§.§,!0§);
            }
         }
         else if(this.§ !B§)
         {
            this.§ !B§.§9!%§();
         }
      }
      
      public function §4Y§(param1:§="#§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§7;§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§7;§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§4c§ == param1 && this.§4c§.§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§!!A§)
         {
            if(_loc6_ = _loc5_.§4Y§(param1,param2))
            {
               _loc4_ = true;
               this.§ !B§ = _loc5_;
               this.§4!^§();
            }
         }
         if(this.§4c§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§ !B§ || !§,!1§.§2=§.§"H§(this.§ !B§.§4c§.mName))
            {
               for each(_loc7_ in this.§!!A§)
               {
                  if(§,!1§.§2=§.§"H§(_loc7_.§4c§.mName))
                  {
                     this.§ !B§ = _loc7_;
                  }
               }
            }
            if(this.§ !B§ && param2)
            {
               this.§ !B§.§4Y§(param1,param2,true);
            }
         }
         if(this.§4c§)
         {
            if(_loc4_)
            {
               if(this.§6"?§)
               {
                  this.§6"?§.§"!,§(this.§4c§.mClip);
               }
               this.§4c§.setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§4!^§();
            }
            else
            {
               if(this.§6"?§)
               {
                  this.§6"?§.§0k§(this.§4c§.mClip);
               }
               if(this.§4c§.§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§4c§.setComponentState(§9!!§.§,!0§);
               }
               this.§ "8§();
            }
         }
         return _loc4_;
      }
      
      private function §4!^§() : void
      {
         var _loc1_:§7;§ = null;
         var _loc2_:§-!2§ = null;
         for each(_loc1_ in this.§!!A§)
         {
            _loc1_.§9!4§(true);
         }
         if(this.§ !B§ && this.§ !B§.§6"?§)
         {
            this.§ !B§.§6"?§.§"!,§(this.§ !B§.§4c§.mClip);
         }
         for each(_loc2_ in this.§0^§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function § "8§() : void
      {
         var _loc1_:§7;§ = null;
         var _loc2_:§!$§ = null;
         var _loc3_:§-!2§ = null;
         for each(_loc1_ in this.§!!A§)
         {
            _loc1_.§9!4§(false);
         }
         for each(_loc2_ in this.§"!_§)
         {
            _loc2_.§&"4§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§0^§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §7>§() : void
      {
         var _loc1_:§7;§ = null;
         var _loc2_:§!$§ = null;
         for each(_loc1_ in this.§!!A§)
         {
            _loc1_.§7>§();
         }
         for each(_loc2_ in this.§"!_§)
         {
            _loc2_.§&"4§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §6!p§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§ !B§ == null)
            {
               return;
            }
            if(this.§ !B§.§1!&§())
            {
               _loc3_ = this.§!!A§.indexOf(this.§ !B§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§!!A§.length) % this.§!!A§.length;
                  this.§ !B§ = this.§!!A§[_loc3_];
               }
               while(!this.§ !B§.§4c§.visible);
               
            }
            this.§4Y§(this.§ !B§.§4c§,true);
         }
         else
         {
            this.§ !B§.§6!p§(param1 - 1,param2);
         }
      }
      
      public function §?1§() : Vector.<§!$§>
      {
         if(this.§ !B§ != null)
         {
            return this.§ !B§.§?1§();
         }
         return this.§"!_§;
      }
      
      public function §&!c§(param1:§[@§) : void
      {
         this.§6"?§ = param1;
      }
      
      public function §>"4§(param1:§="#§) : §7;§
      {
         var _loc2_:§7;§ = null;
         var _loc3_:§7;§ = null;
         if(this.§4c§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§!!A§)
         {
            _loc3_ = _loc2_.§>"4§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §#h§() : Vector.<§!$§>
      {
         var _loc2_:§7;§ = null;
         var _loc1_:Vector.<§!$§> = new Vector.<§!$§>();
         for each(_loc2_ in this.§!!A§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§#h§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§!$§>();
         }
         if(this.§"!_§)
         {
            _loc1_ = _loc1_.concat(this.§"!_§);
         }
         return _loc1_;
      }
      
      private function §9!4§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§4c§)
         {
            return;
         }
         if(this.§"!§())
         {
            _loc2_ = param1 && §,!1§.§2=§.§"H§(this.§4c§.mName);
            this.§4c§.setVisibility(_loc2_);
            _loc3_ = §'!;§.§2=§.§<J§.§["$§(this.§4c§.mName);
            this.§4c§.setEnabled(_loc3_);
            this.§;!5§(!_loc3_);
         }
         else
         {
            _loc2_ = param1;
            _loc2_ = _loc2_ && §,!1§.§2=§.§"H§(this.§4c§.mName);
            _loc2_ = _loc2_ && §'!;§.§2=§.§<J§.§["$§(this.§4c§.mName);
            this.§4c§.setVisibility(_loc2_);
            this.§4c§.setEnabled(_loc2_);
         }
      }
      
      private function §;!5§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         if(!this.§-%§)
         {
            _loc2_ = §>!]§.§1!8§("Level_icon");
            this.§-%§ = new _loc2_();
            this.§4c§.mClip.parent.addChild(this.§-%§);
            this.§-%§.width = §=_§;
            this.§-%§.scaleY = this.§-%§.scaleX;
            this.§-%§.x = this.§4c§.x + this.§4c§.width / 2 - 5;
            this.§-%§.y = this.§4c§.y + this.§4c§.height / 2 - 5;
            _loc3_ = this.§-%§ as MovieClip;
            ((_loc3_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§%"#§.toString();
         }
         this.§-%§.visible = param1 && this.§4c§.visible;
      }
      
      public function §!l§(param1:Boolean = true) : void
      {
         var _loc2_:§7;§ = null;
         if(this.§4c§)
         {
            this.§9!4§(param1);
         }
         for each(_loc2_ in this.§!!A§)
         {
            _loc2_.§!l§(!!this.§4c§ ? Boolean(this.§4c§.visible) : true);
         }
      }
      
      private function §"!§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§4c§.mName) != -1;
      }
      
      public function §>x§(param1:String) : §="#§
      {
         var _loc2_:§7;§ = null;
         var _loc3_:§="#§ = null;
         if(this.§@">§(param1))
         {
            return this.§4c§;
         }
         for each(_loc2_ in this.§!!A§)
         {
            _loc3_ = _loc2_.§>x§(param1);
            if(_loc3_)
            {
               if(this.§4c§ == null || this.§1!&§())
               {
                  return _loc3_;
               }
               return this.§4c§;
            }
         }
         return null;
      }
      
      private function §@">§(param1:String) : Boolean
      {
         var _loc2_:§!$§ = null;
         if(this.§"!_§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§"!_§)
         {
            if(_loc2_.getItemName() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §%"#§() : int
      {
         return this.§?!O§;
      }
   }
}
