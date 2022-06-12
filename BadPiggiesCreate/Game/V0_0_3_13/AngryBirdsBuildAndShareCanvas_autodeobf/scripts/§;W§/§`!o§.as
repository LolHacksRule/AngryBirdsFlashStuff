package §;W§
{
   import § ""§.§4!n§;
   import § ""§.§]k§;
   import § ^§.§0c§;
   import § ^§.§@#§;
   import § true§.§1H§;
   import § true§.§8K§;
   import §4!j§.§""3§;
   import §4!j§.§[!f§;
   import §;!@§.§6f§;
   import §;!@§.§>!%§;
   import §`"2§.§6!,§;
   import com.rovio.assets.§=#§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §`!o§
   {
      
      private static const §&E§:int = 20;
       
      
      private var §+g§:§8K§;
      
      private var §+R§:§`!o§;
      
      private var §3!D§:Vector.<§`!o§>;
      
      private var §[!P§:Vector.<§%!§>;
      
      private var §<3§:int = 0;
      
      private var §'"&§:§1H§;
      
      private var §3"#§:Vector.<§[!f§>;
      
      private var §!!R§:§,!e§;
      
      private var §2+§:DisplayObject;
      
      private var §#E§:int = 2147483647;
      
      public function §`!o§(param1:§1H§, param2:§8K§ = null)
      {
         this.§3!D§ = new Vector.<§`!o§>();
         this.§[!P§ = new Vector.<§%!§>();
         this.§3"#§ = new Vector.<§[!f§>();
         super();
         this.§'"&§ = param1;
         this.§+g§ = param2;
         if(this.§+g§)
         {
            this.§+g§.setVisibility(false);
         }
      }
      
      public function §-!4§(param1:String) : void
      {
         var _loc3_:§6f§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§%!§ = null;
         var _loc8_:String = null;
         var _loc9_:§]k§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §4!n§.§@B§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §>!%§.§8!4§)
            {
               if(_loc4_ = §=#§.§1v§(_loc3_.§;!B§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §%!§(_loc3_.mName,this.§'"&§,_loc5_,true);
                  this.§[!P§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §4!n§.§]4§(_loc8_)) && param1 == _loc9_.§1P§)
               {
                  _loc10_ = §6!,§.§7!?§.§!!k§(_loc9_.§=!+§);
                  _loc7_ = new §%!§(_loc8_,this.§'"&§,new Bitmap(_loc10_,"auto",true));
                  this.§[!P§.push(_loc7_);
                  _loc7_.§`!C§(0);
               }
            }
         }
      }
      
      public function §92§(param1:String, param2:Number = 1, param3:Number = 2147483647) : void
      {
         var _loc5_:BitmapData = null;
         var _loc6_:§%!§ = null;
         if(param3 < this.§#E§)
         {
            this.§#E§ = param3;
         }
         var _loc4_:§]k§;
         if(_loc4_ = §4!n§.§]4§(param1))
         {
            _loc5_ = §6!,§.§7!?§.§!!k§(_loc4_.§=!+§);
            _loc6_ = new §%!§(param1,this.§'"&§,new Bitmap(_loc5_,"auto",true),false,param2,param3);
            this.§[!P§.push(_loc6_);
            _loc6_.§`!C§(0);
         }
      }
      
      public function §9!'§(param1:String) : void
      {
         var _loc2_:int = this.§[!P§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[!P§[_loc2_].getItemName() == param1)
            {
               this.§[!P§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §0r§(param1:§8K§) : §`!o§
      {
         var _loc2_:§`!o§ = null;
         _loc2_ = new §`!o§(this.§'"&§,param1);
         this.§3!D§.push(_loc2_);
         if(this.§+R§ == null)
         {
            this.§+R§ = this.§3!D§[0];
         }
         return _loc2_;
      }
      
      public function §[!I§(param1:§[!f§) : void
      {
         this.§3"#§.push(param1);
      }
      
      private function §'!L§() : Boolean
      {
         return this.§+g§.§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §=5§() : Boolean
      {
         if(this.§+g§ && !this.§'!L§())
         {
            return false;
         }
         if(this.§+R§)
         {
            return this.§+R§.§=5§();
         }
         return true;
      }
      
      public function §]l§() : String
      {
         if(this.§+g§ && !this.§'!L§())
         {
            return null;
         }
         if(this.§+R§)
         {
            return this.§+R§.§]l§();
         }
         if(!this.§+g§)
         {
            return null;
         }
         return this.§+g§.mName;
      }
      
      public function §>;§() : void
      {
         if(this.§+g§)
         {
            if(this.§!!R§)
            {
               this.§!!R§.§"#§(this.§+g§.mClip);
            }
            if(this.§+g§.§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§+g§.setComponentState(§""3§.§!`§);
            }
         }
         else if(this.§+R§)
         {
            this.§+R§.§>;§();
         }
      }
      
      public function §]p§(param1:§8K§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§`!o§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§`!o§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§+g§ == param1 && this.§+g§.§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§3!D§)
         {
            if(_loc6_ = _loc5_.§]p§(param1,param2))
            {
               _loc4_ = true;
               this.§+R§ = _loc5_;
               this.§'k§();
            }
         }
         if(this.§+g§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§+R§ || !§@#§.§7!?§.§-!9§(this.§+R§.§+g§.mName))
            {
               for each(_loc7_ in this.§3!D§)
               {
                  if(§@#§.§7!?§.§-!9§(_loc7_.§+g§.mName))
                  {
                     this.§+R§ = _loc7_;
                  }
               }
            }
            if(this.§+R§ && param2)
            {
               this.§+R§.§]p§(param1,param2,true);
            }
         }
         if(this.§+g§)
         {
            if(_loc4_)
            {
               if(this.§!!R§)
               {
                  this.§!!R§.§;@§(this.§+g§.mClip);
               }
               this.§+g§.setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§'k§();
            }
            else
            {
               if(this.§!!R§)
               {
                  this.§!!R§.§"#§(this.§+g§.mClip);
               }
               if(this.§+g§.§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§+g§.setComponentState(§""3§.§!`§);
               }
               this.§[!9§();
            }
         }
         return _loc4_;
      }
      
      private function §'k§() : void
      {
         var _loc1_:§`!o§ = null;
         var _loc2_:§[!f§ = null;
         for each(_loc1_ in this.§3!D§)
         {
            _loc1_.§;I§(true);
         }
         if(this.§+R§ && this.§+R§.§!!R§)
         {
            this.§+R§.§!!R§.§;@§(this.§+R§.§+g§.mClip);
         }
         for each(_loc2_ in this.§3"#§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §[!9§() : void
      {
         var _loc1_:§`!o§ = null;
         var _loc2_:§%!§ = null;
         var _loc3_:§[!f§ = null;
         for each(_loc1_ in this.§3!D§)
         {
            _loc1_.§;I§(false);
         }
         for each(_loc2_ in this.§[!P§)
         {
            _loc2_.§`!C§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§3"#§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §68§() : void
      {
         var _loc1_:§`!o§ = null;
         var _loc2_:§%!§ = null;
         for each(_loc1_ in this.§3!D§)
         {
            _loc1_.§68§();
         }
         for each(_loc2_ in this.§[!P§)
         {
            _loc2_.§`!C§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §'S§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§+R§ == null)
            {
               return;
            }
            if(this.§+R§.§'!L§())
            {
               _loc3_ = this.§3!D§.indexOf(this.§+R§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§3!D§.length) % this.§3!D§.length;
                  this.§+R§ = this.§3!D§[_loc3_];
               }
               while(!this.§+R§.§+g§.visible);
               
            }
            this.§]p§(this.§+R§.§+g§,true);
         }
         else
         {
            this.§+R§.§'S§(param1 - 1,param2);
         }
      }
      
      public function §+c§() : Vector.<§%!§>
      {
         if(this.§+R§ != null)
         {
            return this.§+R§.§+c§();
         }
         return this.§[!P§;
      }
      
      public function §5!;§(param1:§,!e§) : void
      {
         this.§!!R§ = param1;
      }
      
      public function §&"&§(param1:§8K§) : §`!o§
      {
         var _loc2_:§`!o§ = null;
         var _loc3_:§`!o§ = null;
         if(this.§+g§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§3!D§)
         {
            _loc3_ = _loc2_.§&"&§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §2!W§() : Vector.<§%!§>
      {
         var _loc2_:§`!o§ = null;
         var _loc1_:Vector.<§%!§> = new Vector.<§%!§>();
         for each(_loc2_ in this.§3!D§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§2!W§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§%!§>();
         }
         if(this.§[!P§)
         {
            _loc1_ = _loc1_.concat(this.§[!P§);
         }
         return _loc1_;
      }
      
      private function §;I§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§+g§)
         {
            return;
         }
         if(this.§9?§())
         {
            _loc2_ = param1 && §@#§.§7!?§.§-!9§(this.§+g§.mName);
            this.§+g§.setVisibility(_loc2_);
            _loc3_ = §0c§.§7!?§.§-h§.§8!b§(this.§+g§.mName);
            this.§+g§.setEnabled(_loc3_);
            this.§8^§(!_loc3_);
         }
         else
         {
            _loc2_ = param1;
            _loc2_ = _loc2_ && §@#§.§7!?§.§-!9§(this.§+g§.mName);
            _loc2_ = _loc2_ && §0c§.§7!?§.§-h§.§8!b§(this.§+g§.mName);
            this.§+g§.setVisibility(_loc2_);
            this.§+g§.setEnabled(_loc2_);
         }
      }
      
      private function §8^§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         if(!this.§2+§)
         {
            _loc2_ = §=#§.§1v§("Level_icon");
            this.§2+§ = new _loc2_();
            this.§+g§.mClip.parent.addChild(this.§2+§);
            this.§2+§.width = §&E§;
            this.§2+§.scaleY = this.§2+§.scaleX;
            this.§2+§.x = this.§+g§.x + this.§+g§.width / 2 - 5;
            this.§2+§.y = this.§+g§.y + this.§+g§.height / 2 - 5;
            _loc3_ = this.§2+§ as MovieClip;
            ((_loc3_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§=!§.toString();
         }
         this.§2+§.visible = param1 && this.§+g§.visible;
      }
      
      public function §02§(param1:Boolean = true) : void
      {
         var _loc2_:§`!o§ = null;
         if(this.§+g§)
         {
            this.§;I§(param1);
         }
         for each(_loc2_ in this.§3!D§)
         {
            _loc2_.§02§(!!this.§+g§ ? Boolean(this.§+g§.visible) : true);
         }
      }
      
      private function §9?§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§+g§.mName) != -1;
      }
      
      public function §3H§(param1:String) : §8K§
      {
         var _loc2_:§`!o§ = null;
         var _loc3_:§8K§ = null;
         if(this.§'"6§(param1))
         {
            return this.§+g§;
         }
         for each(_loc2_ in this.§3!D§)
         {
            _loc3_ = _loc2_.§3H§(param1);
            if(_loc3_)
            {
               if(this.§+g§ == null || this.§'!L§())
               {
                  return _loc3_;
               }
               return this.§+g§;
            }
         }
         return null;
      }
      
      private function §'"6§(param1:String) : Boolean
      {
         var _loc2_:§%!§ = null;
         if(this.§[!P§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§[!P§)
         {
            if(_loc2_.getItemName() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §=!§() : int
      {
         return this.§#E§;
      }
   }
}
