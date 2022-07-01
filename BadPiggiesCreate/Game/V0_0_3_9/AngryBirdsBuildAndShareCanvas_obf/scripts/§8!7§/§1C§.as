package §8!7§
{
   import §%!n§.§7P§;
   import §&!&§.§&"1§;
   import §&!&§.§+!A§;
   import §3>§.§=!f§;
   import §3>§.§["!§;
   import §7"2§.§;!5§;
   import §;!<§.§7!f§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<!x§.§7u§;
   import §<!x§.§`f§;
   import com.rovio.assets.§8!q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class §1C§
   {
      
      private static const §["3§:int = 20;
       
      
      private var §const§:§="5§;
      
      private var §6"1§:§1C§;
      
      private var §^%§:Vector.<§1C§>;
      
      private var §7!z§:Vector.<§'9§>;
      
      private var §9!u§:int = 0;
      
      private var §?=§:§>"-§;
      
      private var §+!K§:Vector.<§&"1§>;
      
      private var §[!2§:§`!#§;
      
      private var §=i§:DisplayObject;
      
      public function §1C§(param1:§>"-§, param2:§="5§ = null)
      {
         this.§^%§ = new Vector.<§1C§>();
         this.§7!z§ = new Vector.<§'9§>();
         this.§+!K§ = new Vector.<§&"1§>();
         super();
         this.§?=§ = param1;
         this.§const§ = param2;
         if(this.§const§)
         {
            this.§const§.setVisibility(false);
         }
      }
      
      public function §&e§(param1:String) : void
      {
         var _loc3_:§`f§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§'9§ = null;
         var _loc8_:String = null;
         var _loc9_:§=!f§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §["!§.§'"5§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §7u§.§`!m§)
            {
               if(_loc4_ = §8!q§.§2^§(_loc3_.§+k§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §'9§(_loc3_.mName,this.§?=§,_loc5_,true);
                  this.§7!z§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §["!§.§+!s§(_loc8_)) && param1 == _loc9_.§+!5§)
               {
                  _loc10_ = §7!f§.§'!o§.§3!y§(_loc9_.§@!'§);
                  _loc7_ = new §'9§(_loc8_,this.§?=§,new Bitmap(_loc10_,"auto",true));
                  this.§7!z§.push(_loc7_);
                  _loc7_.§4!w§(0);
               }
            }
         }
      }
      
      public function §;!7§(param1:String, param2:Number = 1) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:§'9§ = null;
         var _loc3_:§=!f§ = §["!§.§+!s§(param1);
         if(_loc3_)
         {
            _loc4_ = §7!f§.§'!o§.§3!y§(_loc3_.§@!'§);
            _loc5_ = new §'9§(param1,this.§?=§,new Bitmap(_loc4_,"auto",true),false,param2);
            this.§7!z§.push(_loc5_);
            _loc5_.§4!w§(0);
         }
      }
      
      public function §]"-§(param1:String) : void
      {
         var _loc2_:int = this.§7!z§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7!z§[_loc2_].getItemName() == param1)
            {
               this.§7!z§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §@"1§(param1:§="5§) : §1C§
      {
         var _loc2_:§1C§ = null;
         _loc2_ = new §1C§(this.§?=§,param1);
         this.§^%§.push(_loc2_);
         if(this.§6"1§ == null)
         {
            this.§6"1§ = this.§^%§[0];
         }
         return _loc2_;
      }
      
      public function §?!;§(param1:§&"1§) : void
      {
         this.§+!K§.push(param1);
      }
      
      private function §0m§() : Boolean
      {
         return this.§const§.§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §7R§() : Boolean
      {
         if(this.§const§ && !this.§0m§())
         {
            return false;
         }
         if(this.§6"1§)
         {
            return this.§6"1§.§7R§();
         }
         return true;
      }
      
      public function §6!I§() : String
      {
         if(this.§const§ && !this.§0m§())
         {
            return null;
         }
         if(this.§6"1§)
         {
            return this.§6"1§.§6!I§();
         }
         if(!this.§const§)
         {
            return null;
         }
         return this.§const§.mName;
      }
      
      public function §?W§() : void
      {
         if(this.§const§)
         {
            if(this.§[!2§)
            {
               this.§[!2§.§8!S§(this.§const§.mClip);
            }
            if(this.§const§.§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§const§.setComponentState(§+!A§.§5"6§);
            }
         }
         else if(this.§6"1§)
         {
            this.§6"1§.§?W§();
         }
      }
      
      public function §+!_§(param1:§="5§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§1C§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§1C§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§const§ == param1 && this.§const§.§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§^%§)
         {
            if(_loc6_ = _loc5_.§+!_§(param1,param2))
            {
               _loc4_ = true;
               this.§6"1§ = _loc5_;
               this.§-!D§();
            }
         }
         if(this.§const§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§6"1§ || !§7P§.§'!o§.isCategoryAvailable(this.§6"1§.§const§.mName))
            {
               for each(_loc7_ in this.§^%§)
               {
                  if(§7P§.§'!o§.isCategoryAvailable(_loc7_.§const§.mName))
                  {
                     this.§6"1§ = _loc7_;
                  }
               }
            }
            if(this.§6"1§ && param2)
            {
               this.§6"1§.§+!_§(param1,param2,true);
            }
         }
         if(this.§const§)
         {
            if(_loc4_)
            {
               if(this.§[!2§)
               {
                  this.§[!2§.§;!@§(this.§const§.mClip);
               }
               this.§const§.setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§-!D§();
            }
            else
            {
               if(this.§[!2§)
               {
                  this.§[!2§.§8!S§(this.§const§.mClip);
               }
               if(this.§const§.§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§const§.setComponentState(§+!A§.§5"6§);
               }
               this.§4",§();
            }
         }
         return _loc4_;
      }
      
      private function §-!D§() : void
      {
         var _loc1_:§1C§ = null;
         var _loc2_:§&"1§ = null;
         for each(_loc1_ in this.§^%§)
         {
            _loc1_.§#!2§(true);
         }
         if(this.§6"1§ && this.§6"1§.§[!2§)
         {
            this.§6"1§.§[!2§.§;!@§(this.§6"1§.§const§.mClip);
         }
         for each(_loc2_ in this.§+!K§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §4",§() : void
      {
         var _loc1_:§1C§ = null;
         var _loc2_:§'9§ = null;
         var _loc3_:§&"1§ = null;
         for each(_loc1_ in this.§^%§)
         {
            _loc1_.§#!2§(false);
         }
         for each(_loc2_ in this.§7!z§)
         {
            _loc2_.§4!w§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§+!K§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §45§() : void
      {
         var _loc1_:§1C§ = null;
         var _loc2_:§'9§ = null;
         for each(_loc1_ in this.§^%§)
         {
            _loc1_.§45§();
         }
         for each(_loc2_ in this.§7!z§)
         {
            _loc2_.§4!w§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §5!;§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§6"1§ == null)
            {
               return;
            }
            if(this.§6"1§.§0m§())
            {
               _loc3_ = this.§^%§.indexOf(this.§6"1§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§^%§.length) % this.§^%§.length;
                  this.§6"1§ = this.§^%§[_loc3_];
               }
               while(!this.§6"1§.§const§.visible);
               
            }
            this.§+!_§(this.§6"1§.§const§,true);
         }
         else
         {
            this.§6"1§.§5!;§(param1 - 1,param2);
         }
      }
      
      public function §%'§() : Vector.<§'9§>
      {
         if(this.§6"1§ != null)
         {
            return this.§6"1§.§%'§();
         }
         return this.§7!z§;
      }
      
      public function § !j§(param1:§`!#§) : void
      {
         this.§[!2§ = param1;
      }
      
      public function §'[§(param1:§="5§) : §1C§
      {
         var _loc2_:§1C§ = null;
         var _loc3_:§1C§ = null;
         if(this.§const§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§^%§)
         {
            _loc3_ = _loc2_.§'[§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §9V§() : Vector.<§'9§>
      {
         var _loc2_:§1C§ = null;
         var _loc1_:Vector.<§'9§> = new Vector.<§'9§>();
         for each(_loc2_ in this.§^%§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§9V§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§'9§>();
         }
         if(this.§7!z§)
         {
            _loc1_ = _loc1_.concat(this.§7!z§);
         }
         return _loc1_;
      }
      
      private function §#!2§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§const§)
         {
            return;
         }
         if(this.§'!x§())
         {
            this.§const§.setVisibility(param1 && §7P§.§'!o§.isCategoryAvailable(this.§const§.mName));
            _loc2_ = §;!5§.§'!o§.§%V§.§#!§(this.§const§.mName);
            this.§const§.setEnabled(_loc2_);
            this.§[!%§(!_loc2_);
         }
         else
         {
            _loc3_ = param1;
            _loc3_ = _loc3_ && §7P§.§'!o§.isCategoryAvailable(this.§const§.mName);
            _loc3_ = _loc3_ && §;!5§.§'!o§.§%V§.§#!§(this.§const§.mName);
            this.§const§.setVisibility(_loc3_);
            this.§const§.setEnabled(_loc3_);
         }
      }
      
      private function §[!%§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         if(!this.§=i§)
         {
            _loc2_ = §8!q§.§2^§("Level_icon");
            this.§=i§ = new _loc2_();
            this.§const§.mClip.parent.addChild(this.§=i§);
            this.§=i§.width = §["3§;
            this.§=i§.scaleY = this.§=i§.scaleX;
            this.§=i§.x = this.§const§.x + this.§const§.width / 2 - 5;
            this.§=i§.y = this.§const§.y + this.§const§.height / 2 - 5;
         }
         this.§=i§.visible = param1 && this.§const§.visible;
      }
      
      public function §5!8§(param1:Boolean = true) : void
      {
         var _loc2_:§1C§ = null;
         if(this.§const§)
         {
            this.§#!2§(param1);
         }
         for each(_loc2_ in this.§^%§)
         {
            _loc2_.§5!8§(!!this.§const§ ? Boolean(this.§const§.visible) : true);
         }
      }
      
      private function §'!x§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§const§.mName) != -1;
      }
      
      public function §^!A§(param1:String) : §="5§
      {
         var _loc2_:§1C§ = null;
         var _loc3_:§="5§ = null;
         if(this.§%!T§(param1))
         {
            return this.§const§;
         }
         for each(_loc2_ in this.§^%§)
         {
            _loc3_ = _loc2_.§^!A§(param1);
            if(_loc3_)
            {
               if(this.§const§ == null || this.§0m§())
               {
                  return _loc3_;
               }
               return this.§const§;
            }
         }
         return null;
      }
      
      private function §%!T§(param1:String) : Boolean
      {
         var _loc2_:§'9§ = null;
         if(this.§7!z§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§7!z§)
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
