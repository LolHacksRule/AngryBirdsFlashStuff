package §9!z§
{
   import §!q§.§ %§;
   import §!q§.§84§;
   import §%t§.§-!5§;
   import §&!s§.§+!O§;
   import §&!s§.§1!S§;
   import §'!s§.§9!^§;
   import §'!s§.§;2§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §<8§.§"h§;
   import §<8§.§'X§;
   import com.rovio.assets.§5!+§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class §#!>§
   {
      
      private static const §^!>§:int = 20;
       
      
      private var §2B§:§8!r§;
      
      private var §with§:§#!>§;
      
      private var §]!5§:Vector.<§#!>§>;
      
      private var §`F§:Vector.<§5"!§>;
      
      private var §;,§:int = 0;
      
      private var §7I§:§7!a§;
      
      private var §+!W§:Vector.<§'X§>;
      
      private var §^4§:§>!w§;
      
      private var §=!5§:DisplayObject;
      
      public function §#!>§(param1:§7!a§, param2:§8!r§ = null)
      {
         this.§]!5§ = new Vector.<§#!>§>();
         this.§`F§ = new Vector.<§5"!§>();
         this.§+!W§ = new Vector.<§'X§>();
         super();
         this.§7I§ = param1;
         this.§2B§ = param2;
         if(this.§2B§)
         {
            this.§2B§.setVisibility(false);
         }
      }
      
      public function §3!5§(param1:String) : void
      {
         var _loc3_:§9!^§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§5"!§ = null;
         var _loc8_:String = null;
         var _loc9_:§1!S§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §+!O§.§#@§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §;2§.§0!Y§)
            {
               if(_loc4_ = §5!+§.§,]§(_loc3_.§&!2§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §5"!§(_loc3_.mName,this.§7I§,_loc5_,true);
                  this.§`F§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §+!O§.§?!b§(_loc8_)) && param1 == _loc9_.§%"9§)
               {
                  _loc10_ = §-!5§.§,l§.§2s§(_loc9_.§'!l§);
                  _loc7_ = new §5"!§(_loc8_,this.§7I§,new Bitmap(_loc10_,"auto",true));
                  this.§`F§.push(_loc7_);
                  _loc7_.§0!&§(0);
               }
            }
         }
      }
      
      public function §!!S§(param1:String, param2:Number = 1) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:§5"!§ = null;
         var _loc3_:§1!S§ = §+!O§.§?!b§(param1);
         if(_loc3_)
         {
            _loc4_ = §-!5§.§,l§.§2s§(_loc3_.§'!l§);
            _loc5_ = new §5"!§(param1,this.§7I§,new Bitmap(_loc4_,"auto",true),false,param2);
            this.§`F§.push(_loc5_);
            _loc5_.§0!&§(0);
         }
      }
      
      public function §?!5§(param1:String) : void
      {
         var _loc2_:int = this.§`F§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`F§[_loc2_].getItemName() == param1)
            {
               this.§`F§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §5!l§(param1:§8!r§) : §#!>§
      {
         var _loc2_:§#!>§ = null;
         _loc2_ = new §#!>§(this.§7I§,param1);
         this.§]!5§.push(_loc2_);
         if(this.§with§ == null)
         {
            this.§with§ = this.§]!5§[0];
         }
         return _loc2_;
      }
      
      public function §2!%§(param1:§'X§) : void
      {
         this.§+!W§.push(param1);
      }
      
      private function §,C§() : Boolean
      {
         return this.§2B§.§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §]!Y§() : Boolean
      {
         if(this.§2B§ && !this.§,C§())
         {
            return false;
         }
         if(this.§with§)
         {
            return this.§with§.§]!Y§();
         }
         return true;
      }
      
      public function §?!c§() : String
      {
         if(this.§2B§ && !this.§,C§())
         {
            return null;
         }
         if(this.§with§)
         {
            return this.§with§.§?!c§();
         }
         if(!this.§2B§)
         {
            return null;
         }
         return this.§2B§.mName;
      }
      
      public function § U§() : void
      {
         if(this.§2B§)
         {
            if(this.§^4§)
            {
               this.§^4§.§8z§(this.§2B§.mClip);
            }
            if(this.§2B§.§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§2B§.setComponentState(§"h§.§"!a§);
            }
         }
         else if(this.§with§)
         {
            this.§with§.§ U§();
         }
      }
      
      public function §;§(param1:§8!r§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§#!>§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§#!>§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§2B§ == param1 && this.§2B§.§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§]!5§)
         {
            if(_loc6_ = _loc5_.§;§(param1,param2))
            {
               _loc4_ = true;
               this.§with§ = _loc5_;
               this.§`!L§();
            }
         }
         if(this.§2B§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§with§ || !§ %§.§,l§.§-S§(this.§with§.§2B§.mName))
            {
               for each(_loc7_ in this.§]!5§)
               {
                  if(§ %§.§,l§.§-S§(_loc7_.§2B§.mName))
                  {
                     this.§with§ = _loc7_;
                  }
               }
            }
            if(this.§with§ && param2)
            {
               this.§with§.§;§(param1,param2,true);
            }
         }
         if(this.§2B§)
         {
            if(_loc4_)
            {
               if(this.§^4§)
               {
                  this.§^4§.§&!S§(this.§2B§.mClip);
               }
               this.§2B§.setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§`!L§();
            }
            else
            {
               if(this.§^4§)
               {
                  this.§^4§.§8z§(this.§2B§.mClip);
               }
               if(this.§2B§.§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§2B§.setComponentState(§"h§.§"!a§);
               }
               this.§3^§();
            }
         }
         return _loc4_;
      }
      
      private function §`!L§() : void
      {
         var _loc1_:§#!>§ = null;
         var _loc2_:§'X§ = null;
         for each(_loc1_ in this.§]!5§)
         {
            _loc1_.§1!$§(true);
         }
         if(this.§with§ && this.§with§.§^4§)
         {
            this.§with§.§^4§.§&!S§(this.§with§.§2B§.mClip);
         }
         for each(_loc2_ in this.§+!W§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §3^§() : void
      {
         var _loc1_:§#!>§ = null;
         var _loc2_:§5"!§ = null;
         var _loc3_:§'X§ = null;
         for each(_loc1_ in this.§]!5§)
         {
            _loc1_.§1!$§(false);
         }
         for each(_loc2_ in this.§`F§)
         {
            _loc2_.§0!&§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§+!W§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §=L§() : void
      {
         var _loc1_:§#!>§ = null;
         var _loc2_:§5"!§ = null;
         for each(_loc1_ in this.§]!5§)
         {
            _loc1_.§=L§();
         }
         for each(_loc2_ in this.§`F§)
         {
            _loc2_.§0!&§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §]!2§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§with§ == null)
            {
               return;
            }
            if(this.§with§.§,C§())
            {
               _loc3_ = this.§]!5§.indexOf(this.§with§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§]!5§.length) % this.§]!5§.length;
                  this.§with§ = this.§]!5§[_loc3_];
               }
               while(!this.§with§.§2B§.visible);
               
            }
            this.§;§(this.§with§.§2B§,true);
         }
         else
         {
            this.§with§.§]!2§(param1 - 1,param2);
         }
      }
      
      public function §[!R§() : Vector.<§5"!§>
      {
         if(this.§with§ != null)
         {
            return this.§with§.§[!R§();
         }
         return this.§`F§;
      }
      
      public function §4"1§(param1:§>!w§) : void
      {
         this.§^4§ = param1;
      }
      
      public function §7Z§(param1:§8!r§) : §#!>§
      {
         var _loc2_:§#!>§ = null;
         var _loc3_:§#!>§ = null;
         if(this.§2B§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§]!5§)
         {
            _loc3_ = _loc2_.§7Z§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §^!+§() : Vector.<§5"!§>
      {
         var _loc2_:§#!>§ = null;
         var _loc1_:Vector.<§5"!§> = new Vector.<§5"!§>();
         for each(_loc2_ in this.§]!5§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§^!+§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§5"!§>();
         }
         if(this.§`F§)
         {
            _loc1_ = _loc1_.concat(this.§`F§);
         }
         return _loc1_;
      }
      
      private function §1!$§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§2B§)
         {
            return;
         }
         if(this.§#z§())
         {
            this.§2B§.setVisibility(param1 && § %§.§,l§.§-S§(this.§2B§.mName));
            _loc2_ = §84§.§,l§.§!"1§.§7Y§(this.§2B§.mName);
            this.§2B§.setEnabled(_loc2_);
            this.§;!'§(!_loc2_);
         }
         else
         {
            _loc3_ = param1;
            _loc3_ = _loc3_ && § %§.§,l§.§-S§(this.§2B§.mName);
            _loc3_ = _loc3_ && §84§.§,l§.§!"1§.§7Y§(this.§2B§.mName);
            this.§2B§.setVisibility(_loc3_);
            this.§2B§.setEnabled(_loc3_);
         }
      }
      
      private function §;!'§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         if(!this.§=!5§)
         {
            _loc2_ = §5!+§.§,]§("Level_icon");
            this.§=!5§ = new _loc2_();
            this.§2B§.mClip.parent.addChild(this.§=!5§);
            this.§=!5§.width = §^!>§;
            this.§=!5§.scaleY = this.§=!5§.scaleX;
            this.§=!5§.x = this.§2B§.x + this.§2B§.width / 2 - 5;
            this.§=!5§.y = this.§2B§.y + this.§2B§.height / 2 - 5;
         }
         this.§=!5§.visible = param1 && this.§2B§.visible;
      }
      
      public function §1^§(param1:Boolean = true) : void
      {
         var _loc2_:§#!>§ = null;
         if(this.§2B§)
         {
            this.§1!$§(param1);
         }
         for each(_loc2_ in this.§]!5§)
         {
            _loc2_.§1^§(!!this.§2B§ ? Boolean(this.§2B§.visible) : true);
         }
      }
      
      private function §#z§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§2B§.mName) != -1;
      }
      
      public function §&q§(param1:String) : §8!r§
      {
         var _loc2_:§#!>§ = null;
         var _loc3_:§8!r§ = null;
         if(this.§0K§(param1))
         {
            return this.§2B§;
         }
         for each(_loc2_ in this.§]!5§)
         {
            _loc3_ = _loc2_.§&q§(param1);
            if(_loc3_)
            {
               if(this.§2B§ == null || this.§,C§())
               {
                  return _loc3_;
               }
               return this.§2B§;
            }
         }
         return null;
      }
      
      private function §0K§(param1:String) : Boolean
      {
         var _loc2_:§5"!§ = null;
         if(this.§`F§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§`F§)
         {
            if(_loc2_.getItemName() == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}
