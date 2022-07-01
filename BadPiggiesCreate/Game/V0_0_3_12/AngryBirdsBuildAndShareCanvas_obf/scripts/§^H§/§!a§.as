package §^H§
{
   import §#?§.§%!O§;
   import §#?§.§4">§;
   import §#I§.§4";§;
   import §#I§.§9!O§;
   import §,!x§.§0!s§;
   import §,!x§.§]S§;
   import §5!8§.§+!?§;
   import §5!8§.§;!Z§;
   import §@!-§.§3"1§;
   import §^x§.§3!r§;
   import §^x§.§;_§;
   import com.rovio.assets.§!"'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §!a§
   {
      
      private static const §]i§:int = 20;
       
      
      private var §1!2§:§;!Z§;
      
      private var §,J§:§!a§;
      
      private var §&L§:Vector.<§!a§>;
      
      private var §@"9§:Vector.<§"!i§>;
      
      private var §-!6§:int = 0;
      
      private var §;!f§:§+!?§;
      
      private var §`i§:Vector.<§3!r§>;
      
      private var §`!^§:§8=§;
      
      private var §]!u§:DisplayObject;
      
      private var §?!A§:int = 2147483647;
      
      public function §!a§(param1:§+!?§, param2:§;!Z§ = null)
      {
         this.§&L§ = new Vector.<§!a§>();
         this.§@"9§ = new Vector.<§"!i§>();
         this.§`i§ = new Vector.<§3!r§>();
         super();
         this.§;!f§ = param1;
         this.§1!2§ = param2;
         if(this.§1!2§)
         {
            this.§1!2§.setVisibility(false);
         }
      }
      
      public function § h§(param1:String) : void
      {
         var _loc3_:§9!O§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§"!i§ = null;
         var _loc8_:String = null;
         var _loc9_:§4">§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §%!O§.§?&§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §4";§.§9i§)
            {
               if(_loc4_ = §!"'§.§%!Q§(_loc3_.§0!R§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §"!i§(_loc3_.mName,this.§;!f§,_loc5_,true);
                  this.§@"9§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §%!O§.§2<§(_loc8_)) && param1 == _loc9_.§^X§)
               {
                  _loc10_ = §3"1§.§ "!§.§!5§(_loc9_.§%!t§);
                  _loc7_ = new §"!i§(_loc8_,this.§;!f§,new Bitmap(_loc10_,"auto",true));
                  this.§@"9§.push(_loc7_);
                  _loc7_.§;f§(0);
               }
            }
         }
      }
      
      public function §@"§(param1:String, param2:Number = 1, param3:Number = 2147483647) : void
      {
         var _loc5_:BitmapData = null;
         var _loc6_:§"!i§ = null;
         if(param3 < this.§?!A§)
         {
            this.§?!A§ = param3;
         }
         var _loc4_:§4">§;
         if(_loc4_ = §%!O§.§2<§(param1))
         {
            _loc5_ = §3"1§.§ "!§.§!5§(_loc4_.§%!t§);
            _loc6_ = new §"!i§(param1,this.§;!f§,new Bitmap(_loc5_,"auto",true),false,param2,param3);
            this.§@"9§.push(_loc6_);
            _loc6_.§;f§(0);
         }
      }
      
      public function §7!o§(param1:String) : void
      {
         var _loc2_:int = this.§@"9§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§@"9§[_loc2_].getItemName() == param1)
            {
               this.§@"9§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §9!d§(param1:§;!Z§) : §!a§
      {
         var _loc2_:§!a§ = null;
         _loc2_ = new §!a§(this.§;!f§,param1);
         this.§&L§.push(_loc2_);
         if(this.§,J§ == null)
         {
            this.§,J§ = this.§&L§[0];
         }
         return _loc2_;
      }
      
      public function §`!Y§(param1:§3!r§) : void
      {
         this.§`i§.push(param1);
      }
      
      private function §2#§() : Boolean
      {
         return this.§1!2§.§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §[!x§() : Boolean
      {
         if(this.§1!2§ && !this.§2#§())
         {
            return false;
         }
         if(this.§,J§)
         {
            return this.§,J§.§[!x§();
         }
         return true;
      }
      
      public function §=i§() : String
      {
         if(this.§1!2§ && !this.§2#§())
         {
            return null;
         }
         if(this.§,J§)
         {
            return this.§,J§.§=i§();
         }
         if(!this.§1!2§)
         {
            return null;
         }
         return this.§1!2§.mName;
      }
      
      public function §;!L§() : void
      {
         if(this.§1!2§)
         {
            if(this.§`!^§)
            {
               this.§`!^§.§;w§(this.§1!2§.mClip);
            }
            if(this.§1!2§.§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§1!2§.setComponentState(§;_§.§ "2§);
            }
         }
         else if(this.§,J§)
         {
            this.§,J§.§;!L§();
         }
      }
      
      public function §'!;§(param1:§;!Z§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§!a§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§!a§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§1!2§ == param1 && this.§1!2§.§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§&L§)
         {
            if(_loc6_ = _loc5_.§'!;§(param1,param2))
            {
               _loc4_ = true;
               this.§,J§ = _loc5_;
               this.§#!@§();
            }
         }
         if(this.§1!2§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§,J§ || !§0!s§.§ "!§.§^?§(this.§,J§.§1!2§.mName))
            {
               for each(_loc7_ in this.§&L§)
               {
                  if(§0!s§.§ "!§.§^?§(_loc7_.§1!2§.mName))
                  {
                     this.§,J§ = _loc7_;
                  }
               }
            }
            if(this.§,J§ && param2)
            {
               this.§,J§.§'!;§(param1,param2,true);
            }
         }
         if(this.§1!2§)
         {
            if(_loc4_)
            {
               if(this.§`!^§)
               {
                  this.§`!^§.§^!G§(this.§1!2§.mClip);
               }
               this.§1!2§.setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§#!@§();
            }
            else
            {
               if(this.§`!^§)
               {
                  this.§`!^§.§;w§(this.§1!2§.mClip);
               }
               if(this.§1!2§.§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§1!2§.setComponentState(§;_§.§ "2§);
               }
               this.§[!z§();
            }
         }
         return _loc4_;
      }
      
      private function §#!@§() : void
      {
         var _loc1_:§!a§ = null;
         var _loc2_:§3!r§ = null;
         for each(_loc1_ in this.§&L§)
         {
            _loc1_.§,c§(true);
         }
         if(this.§,J§ && this.§,J§.§`!^§)
         {
            this.§,J§.§`!^§.§^!G§(this.§,J§.§1!2§.mClip);
         }
         for each(_loc2_ in this.§`i§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §[!z§() : void
      {
         var _loc1_:§!a§ = null;
         var _loc2_:§"!i§ = null;
         var _loc3_:§3!r§ = null;
         for each(_loc1_ in this.§&L§)
         {
            _loc1_.§,c§(false);
         }
         for each(_loc2_ in this.§@"9§)
         {
            _loc2_.§;f§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§`i§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §<v§() : void
      {
         var _loc1_:§!a§ = null;
         var _loc2_:§"!i§ = null;
         for each(_loc1_ in this.§&L§)
         {
            _loc1_.§<v§();
         }
         for each(_loc2_ in this.§@"9§)
         {
            _loc2_.§;f§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §0"8§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§,J§ == null)
            {
               return;
            }
            if(this.§,J§.§2#§())
            {
               _loc3_ = this.§&L§.indexOf(this.§,J§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§&L§.length) % this.§&L§.length;
                  this.§,J§ = this.§&L§[_loc3_];
               }
               while(!this.§,J§.§1!2§.visible);
               
            }
            this.§'!;§(this.§,J§.§1!2§,true);
         }
         else
         {
            this.§,J§.§0"8§(param1 - 1,param2);
         }
      }
      
      public function §=G§() : Vector.<§"!i§>
      {
         if(this.§,J§ != null)
         {
            return this.§,J§.§=G§();
         }
         return this.§@"9§;
      }
      
      public function §>l§(param1:§8=§) : void
      {
         this.§`!^§ = param1;
      }
      
      public function §@"6§(param1:§;!Z§) : §!a§
      {
         var _loc2_:§!a§ = null;
         var _loc3_:§!a§ = null;
         if(this.§1!2§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§&L§)
         {
            _loc3_ = _loc2_.§@"6§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §&!1§() : Vector.<§"!i§>
      {
         var _loc2_:§!a§ = null;
         var _loc1_:Vector.<§"!i§> = new Vector.<§"!i§>();
         for each(_loc2_ in this.§&L§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§&!1§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§"!i§>();
         }
         if(this.§@"9§)
         {
            _loc1_ = _loc1_.concat(this.§@"9§);
         }
         return _loc1_;
      }
      
      private function §,c§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§1!2§)
         {
            return;
         }
         if(this.§86§())
         {
            _loc2_ = param1 && §0!s§.§ "!§.§^?§(this.§1!2§.mName);
            this.§1!2§.setVisibility(_loc2_);
            _loc3_ = §]S§.§ "!§.§^"9§.§]!+§(this.§1!2§.mName);
            this.§1!2§.setEnabled(_loc3_);
            this.§3s§(!_loc3_);
         }
         else
         {
            _loc2_ = param1;
            _loc2_ = _loc2_ && §0!s§.§ "!§.§^?§(this.§1!2§.mName);
            _loc2_ = _loc2_ && §]S§.§ "!§.§^"9§.§]!+§(this.§1!2§.mName);
            this.§1!2§.setVisibility(_loc2_);
            this.§1!2§.setEnabled(_loc2_);
         }
      }
      
      private function §3s§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         if(!this.§]!u§)
         {
            _loc2_ = §!"'§.§%!Q§("Level_icon");
            this.§]!u§ = new _loc2_();
            this.§1!2§.mClip.parent.addChild(this.§]!u§);
            this.§]!u§.width = §]i§;
            this.§]!u§.scaleY = this.§]!u§.scaleX;
            this.§]!u§.x = this.§1!2§.x + this.§1!2§.width / 2 - 5;
            this.§]!u§.y = this.§1!2§.y + this.§1!2§.height / 2 - 5;
            _loc3_ = this.§]!u§ as MovieClip;
            ((_loc3_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§,!o§.toString();
         }
         this.§]!u§.visible = param1 && this.§1!2§.visible;
      }
      
      public function §4!u§(param1:Boolean = true) : void
      {
         var _loc2_:§!a§ = null;
         if(this.§1!2§)
         {
            this.§,c§(param1);
         }
         for each(_loc2_ in this.§&L§)
         {
            _loc2_.§4!u§(!!this.§1!2§ ? Boolean(this.§1!2§.visible) : true);
         }
      }
      
      private function §86§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§1!2§.mName) != -1;
      }
      
      public function §0!8§(param1:String) : §;!Z§
      {
         var _loc2_:§!a§ = null;
         var _loc3_:§;!Z§ = null;
         if(this.§+!j§(param1))
         {
            return this.§1!2§;
         }
         for each(_loc2_ in this.§&L§)
         {
            _loc3_ = _loc2_.§0!8§(param1);
            if(_loc3_)
            {
               if(this.§1!2§ == null || this.§2#§())
               {
                  return _loc3_;
               }
               return this.§1!2§;
            }
         }
         return null;
      }
      
      private function §+!j§(param1:String) : Boolean
      {
         var _loc2_:§"!i§ = null;
         if(this.§@"9§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§@"9§)
         {
            if(_loc2_.getItemName() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §,!o§() : int
      {
         return this.§?!A§;
      }
   }
}
