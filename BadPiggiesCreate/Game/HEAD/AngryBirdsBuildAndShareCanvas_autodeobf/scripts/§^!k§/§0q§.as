package §^!k§
{
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §;"7§.§="<§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §@y§.§0"4§;
   import §@y§.§>!D§;
   import §]";§.§!<§;
   import §]";§.§4!p§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §switch§.§47§;
   import §switch§.§4G§;
   
   public class §0q§
   {
      
      private static const §8!t§:int = 20;
       
      
      private var §8R§:§9"8§;
      
      private var §7!0§:§0q§;
      
      private var §8Z§:Vector.<§0q§>;
      
      private var §[z§:Vector.<§;!T§>;
      
      private var §`3§:int = 0;
      
      private var §,8§:§6W§;
      
      private var §<""§:Vector.<§0"4§>;
      
      private var §="8§:§1",§;
      
      private var §='§:DisplayObject;
      
      private var §5r§:int = 2147483647;
      
      public function §0q§(param1:§6W§, param2:§9"8§ = null)
      {
         this.§8Z§ = new Vector.<§0q§>();
         this.§[z§ = new Vector.<§;!T§>();
         this.§<""§ = new Vector.<§0"4§>();
         super();
         this.§,8§ = param1;
         this.§8R§ = param2;
         if(this.§8R§)
         {
            this.§8R§.setVisibility(false);
         }
      }
      
      public function §-!<§(param1:String) : void
      {
         var _loc3_:§4G§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§;!T§ = null;
         var _loc8_:String = null;
         var _loc9_:§4!p§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §!<§.§6p§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §47§.§;!%§)
            {
               if(_loc4_ = §69§.§ 0§(_loc3_.§%"?§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §;!T§(_loc3_.mName,this.§,8§,_loc5_,true);
                  this.§[z§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §!<§.§[!@§(_loc8_)) && param1 == _loc9_.§=!S§)
               {
                  _loc10_ = §="<§.§[E§.§`d§(_loc9_.§+!A§);
                  _loc7_ = new §;!T§(_loc8_,this.§,8§,new Bitmap(_loc10_,"auto",true));
                  this.§[z§.push(_loc7_);
                  _loc7_.§@V§(0);
               }
            }
         }
      }
      
      public function §,!D§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc5_:BitmapData = null;
         var _loc6_:§;!T§ = null;
         if(param3 < this.§5r§)
         {
            this.§5r§ = param3;
         }
         var _loc4_:§4!p§;
         if(_loc4_ = §!<§.§[!@§(param1))
         {
            _loc5_ = §="<§.§[E§.§`d§(_loc4_.§+!A§);
            _loc6_ = new §;!T§(param1,this.§,8§,new Bitmap(_loc5_,"auto",true),false,param2,param3);
            this.§[z§.push(_loc6_);
            _loc6_.§@V§(0);
         }
      }
      
      public function §"!8§(param1:String) : void
      {
         var _loc2_:int = this.§[z§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[z§[_loc2_].getItemName() == param1)
            {
               this.§[z§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §@!#§(param1:§9"8§) : §0q§
      {
         var _loc2_:§0q§ = null;
         _loc2_ = new §0q§(this.§,8§,param1);
         this.§8Z§.push(_loc2_);
         if(this.§7!0§ == null)
         {
            this.§7!0§ = this.§8Z§[0];
         }
         return _loc2_;
      }
      
      public function §#i§(param1:§0"4§) : void
      {
         this.§<""§.push(param1);
      }
      
      private function §03§() : Boolean
      {
         return this.§8R§.§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §2S§() : Boolean
      {
         if(this.§8R§ && !this.§03§())
         {
            return false;
         }
         if(this.§7!0§)
         {
            return this.§7!0§.§2S§();
         }
         return true;
      }
      
      public function §`!x§() : String
      {
         if(this.§8R§ && !this.§03§())
         {
            return null;
         }
         if(this.§7!0§)
         {
            return this.§7!0§.§`!x§();
         }
         if(!this.§8R§)
         {
            return null;
         }
         return this.§8R§.mName;
      }
      
      public function §%z§() : void
      {
         if(this.§8R§)
         {
            if(this.§="8§)
            {
               this.§="8§.§8"-§(this.§8R§.mClip);
            }
            if(this.§8R§.§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§8R§.setComponentState(§>!D§.§;!M§);
            }
         }
         else if(this.§7!0§)
         {
            this.§7!0§.§%z§();
         }
      }
      
      public function §%q§(param1:§9"8§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§0q§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§0q§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§8R§ == param1 && this.§8R§.§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§8Z§)
         {
            if(_loc6_ = _loc5_.§%q§(param1,param2))
            {
               _loc4_ = true;
               this.§7!0§ = _loc5_;
               this.§2!p§();
            }
         }
         if(this.§8R§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§7!0§ || !§!!2§.§[E§.§&f§(this.§7!0§.§8R§.mName))
            {
               for each(_loc7_ in this.§8Z§)
               {
                  if(§!!2§.§[E§.§&f§(_loc7_.§8R§.mName))
                  {
                     this.§7!0§ = _loc7_;
                  }
               }
            }
            if(this.§7!0§ && param2)
            {
               this.§7!0§.§%q§(param1,param2,true);
            }
         }
         if(this.§8R§)
         {
            if(_loc4_)
            {
               if(this.§="8§)
               {
                  this.§="8§.§#!>§(this.§8R§.mClip);
               }
               this.§8R§.setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§2!p§();
            }
            else
            {
               if(this.§="8§)
               {
                  this.§="8§.§8"-§(this.§8R§.mClip);
               }
               if(this.§8R§.§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§8R§.setComponentState(§>!D§.§;!M§);
               }
               this.§9!F§();
            }
         }
         return _loc4_;
      }
      
      private function §2!p§() : void
      {
         var _loc1_:§0q§ = null;
         var _loc2_:§0"4§ = null;
         for each(_loc1_ in this.§8Z§)
         {
            _loc1_.§`1§(true);
         }
         if(this.§7!0§ && this.§7!0§.§="8§)
         {
            this.§7!0§.§="8§.§#!>§(this.§7!0§.§8R§.mClip);
         }
         for each(_loc2_ in this.§<""§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §9!F§() : void
      {
         var _loc1_:§0q§ = null;
         var _loc2_:§;!T§ = null;
         var _loc3_:§0"4§ = null;
         for each(_loc1_ in this.§8Z§)
         {
            _loc1_.§`1§(false);
         }
         for each(_loc2_ in this.§[z§)
         {
            _loc2_.§@V§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§<""§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §4P§() : void
      {
         var _loc1_:§0q§ = null;
         var _loc2_:§;!T§ = null;
         for each(_loc1_ in this.§8Z§)
         {
            _loc1_.§4P§();
         }
         for each(_loc2_ in this.§[z§)
         {
            _loc2_.§@V§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §+!R§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§7!0§ == null)
            {
               return;
            }
            if(this.§7!0§.§03§())
            {
               _loc3_ = this.§8Z§.indexOf(this.§7!0§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§8Z§.length) % this.§8Z§.length;
                  this.§7!0§ = this.§8Z§[_loc3_];
               }
               while(!this.§7!0§.§8R§.visible);
               
            }
            this.§%q§(this.§7!0§.§8R§,true);
         }
         else
         {
            this.§7!0§.§+!R§(param1 - 1,param2);
         }
      }
      
      public function §'!%§() : Vector.<§;!T§>
      {
         if(this.§7!0§ != null)
         {
            return this.§7!0§.§'!%§();
         }
         return this.§[z§;
      }
      
      public function §,"=§(param1:§1",§) : void
      {
         this.§="8§ = param1;
      }
      
      public function §7Q§(param1:§9"8§) : §0q§
      {
         var _loc2_:§0q§ = null;
         var _loc3_:§0q§ = null;
         if(this.§8R§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§8Z§)
         {
            _loc3_ = _loc2_.§7Q§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §&X§() : Vector.<§;!T§>
      {
         var _loc2_:§0q§ = null;
         var _loc1_:Vector.<§;!T§> = new Vector.<§;!T§>();
         for each(_loc2_ in this.§8Z§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§&X§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§;!T§>();
         }
         if(this.§[z§)
         {
            _loc1_ = _loc1_.concat(this.§[z§);
         }
         return _loc1_;
      }
      
      private function §`1§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§8R§)
         {
            return;
         }
         if(this.§'e§())
         {
            _loc2_ = param1 && §!!2§.§[E§.§&f§(this.§8R§.mName);
            this.§8R§.setVisibility(_loc2_);
            _loc3_ = §#!j§.§[E§.§0!;§.§'-§(this.§8R§.mName);
            this.§8R§.setEnabled(_loc3_);
            this.§"i§(!_loc3_);
         }
         else
         {
            _loc2_ = param1;
            _loc2_ = _loc2_ && §!!2§.§[E§.§&f§(this.§8R§.mName);
            _loc2_ = _loc2_ && §#!j§.§[E§.§0!;§.§'-§(this.§8R§.mName);
            this.§8R§.setVisibility(_loc2_);
            this.§8R§.setEnabled(_loc2_);
         }
      }
      
      private function §"i§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         if(!this.§='§)
         {
            _loc2_ = §69§.§ 0§("Level_icon");
            this.§='§ = new _loc2_();
            this.§8R§.mClip.parent.addChild(this.§='§);
            this.§='§.width = §8!t§;
            this.§='§.scaleY = this.§='§.scaleX;
            this.§='§.x = this.§8R§.x + this.§8R§.width / 2 - 5;
            this.§='§.y = this.§8R§.y + this.§8R§.height / 2 - 5;
            _loc3_ = this.§='§ as MovieClip;
            ((_loc3_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§%!M§.toString();
         }
         this.§='§.visible = param1 && this.§8R§.visible;
      }
      
      public function §#k§(param1:Boolean = true) : void
      {
         var _loc2_:§0q§ = null;
         if(this.§8R§)
         {
            this.§`1§(param1);
         }
         for each(_loc2_ in this.§8Z§)
         {
            _loc2_.§#k§(!!this.§8R§ ? Boolean(this.§03§()) : true);
         }
      }
      
      private function §'e§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§8R§.mName) != -1;
      }
      
      public function §!V§(param1:String) : §9"8§
      {
         var _loc2_:§0q§ = null;
         var _loc3_:§9"8§ = null;
         if(this.§3!3§(param1))
         {
            return this.§8R§;
         }
         for each(_loc2_ in this.§8Z§)
         {
            _loc3_ = _loc2_.§!V§(param1);
            if(_loc3_)
            {
               if(this.§8R§ == null || this.§03§())
               {
                  return _loc3_;
               }
               return this.§8R§;
            }
         }
         return null;
      }
      
      private function §3!3§(param1:String) : Boolean
      {
         var _loc2_:§;!T§ = null;
         if(this.§[z§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§[z§)
         {
            if(_loc2_.getItemName() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §%!M§() : int
      {
         return this.§5r§;
      }
   }
}
