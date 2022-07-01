package §9!l§
{
   import §+!d§.§"r§;
   import §+!d§.§8!=§;
   import §2!5§.§0!X§;
   import §2!5§.§=,§;
   import §6d§.§&`§;
   import §6d§.§5!0§;
   import §8q§.§6n§;
   import §8q§.§@§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §[_§.§2!B§;
   import com.rovio.assets.§]!S§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class §+!6§
   {
      
      private static const §&!2§:int = 20;
       
      
      private var §9f§:§2v§;
      
      private var §21§:§+!6§;
      
      private var §[m§:Vector.<§+!6§>;
      
      private var §`6§:Vector.<§@O§>;
      
      private var §9!F§:int = 0;
      
      private var § v§:§;!u§;
      
      private var §[!+§:Vector.<§8!=§>;
      
      private var §<w§:§[!&§;
      
      private var §%!-§:DisplayObject;
      
      public function §+!6§(param1:§;!u§, param2:§2v§ = null)
      {
         this.§[m§ = new Vector.<§+!6§>();
         this.§`6§ = new Vector.<§@O§>();
         this.§[!+§ = new Vector.<§8!=§>();
         super();
         this.§ v§ = param1;
         this.§9f§ = param2;
         if(this.§9f§)
         {
            this.§9f§.setVisibility(false);
         }
      }
      
      public function §!!E§(param1:String) : void
      {
         var _loc3_:§5!0§ = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§@O§ = null;
         var _loc8_:String = null;
         var _loc9_:§6n§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:Array = §@§.§3u§();
         if(param1 == "Themes")
         {
            for each(_loc3_ in §&`§.§8Z§)
            {
               if(_loc4_ = §]!S§.§?! §(_loc3_.§2"+§,false))
               {
                  _loc5_ = new _loc4_();
                  _loc6_ = 0;
                  while(_loc6_ < _loc5_.numChildren)
                  {
                     _loc5_.getChildAt(_loc6_).x = _loc5_.getChildAt(_loc6_).x + _loc5_.width / 2;
                     _loc5_.getChildAt(_loc6_).y = _loc5_.getChildAt(_loc6_).y + _loc5_.height / 2;
                     _loc6_++;
                  }
                  _loc7_ = new §@O§(_loc3_.mName,this.§ v§,_loc5_,true);
                  this.§`6§.push(_loc7_);
               }
            }
         }
         else if(param1 != null)
         {
            for each(_loc8_ in _loc2_)
            {
               if((_loc9_ = §@§.§4"#§(_loc8_)) && param1 == _loc9_.§-A§)
               {
                  _loc10_ = §2!B§.§if §.§#"6§(_loc9_.§"g§);
                  _loc7_ = new §@O§(_loc8_,this.§ v§,new Bitmap(_loc10_,"auto",true));
                  this.§`6§.push(_loc7_);
                  _loc7_.§]!#§(0);
               }
            }
         }
      }
      
      public function §""9§(param1:String, param2:Number = 1) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:§@O§ = null;
         var _loc3_:§6n§ = §@§.§4"#§(param1);
         if(_loc3_)
         {
            _loc4_ = §2!B§.§if §.§#"6§(_loc3_.§"g§);
            _loc5_ = new §@O§(param1,this.§ v§,new Bitmap(_loc4_,"auto",true),false,param2);
            this.§`6§.push(_loc5_);
            _loc5_.§]!#§(0);
         }
      }
      
      public function §;"5§(param1:String) : void
      {
         var _loc2_:int = this.§`6§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`6§[_loc2_].getItemName() == param1)
            {
               this.§`6§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §5!&§(param1:§2v§) : §+!6§
      {
         var _loc2_:§+!6§ = null;
         _loc2_ = new §+!6§(this.§ v§,param1);
         this.§[m§.push(_loc2_);
         if(this.§21§ == null)
         {
            this.§21§ = this.§[m§[0];
         }
         return _loc2_;
      }
      
      public function §&!W§(param1:§8!=§) : void
      {
         this.§[!+§.push(param1);
      }
      
      private function §#"+§() : Boolean
      {
         return this.§9f§.§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT;
      }
      
      public function §-!Y§() : Boolean
      {
         if(this.§9f§ && !this.§#"+§())
         {
            return false;
         }
         if(this.§21§)
         {
            return this.§21§.§-!Y§();
         }
         return true;
      }
      
      public function §]Q§() : String
      {
         if(this.§9f§ && !this.§#"+§())
         {
            return null;
         }
         if(this.§21§)
         {
            return this.§21§.§]Q§();
         }
         if(!this.§9f§)
         {
            return null;
         }
         return this.§9f§.mName;
      }
      
      public function §6"&§() : void
      {
         if(this.§9f§)
         {
            if(this.§<w§)
            {
               this.§<w§.§-! §(this.§9f§.mClip);
            }
            if(this.§9f§.§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§9f§.setComponentState(§"r§.§5!D§);
            }
         }
         else if(this.§21§)
         {
            this.§21§.§6"&§();
         }
      }
      
      public function § !A§(param1:§2v§, param2:Boolean, param3:Boolean = false) : Boolean
      {
         var _loc5_:§+!6§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:§+!6§ = null;
         if(!param1.mClip.mouseEnabled)
         {
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§9f§ == param1 && this.§9f§.§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            return true;
         }
         for each(_loc5_ in this.§[m§)
         {
            if(_loc6_ = _loc5_.§ !A§(param1,param2))
            {
               _loc4_ = true;
               this.§21§ = _loc5_;
               this.§@!>§();
            }
         }
         if(this.§9f§ == param1 || param3)
         {
            _loc4_ = true;
            if(!this.§21§ || !§=,§.§if §.§9§(this.§21§.§9f§.mName))
            {
               for each(_loc7_ in this.§[m§)
               {
                  if(§=,§.§if §.§9§(_loc7_.§9f§.mName))
                  {
                     this.§21§ = _loc7_;
                  }
               }
            }
            if(this.§21§ && param2)
            {
               this.§21§.§ !A§(param1,param2,true);
            }
         }
         if(this.§9f§)
         {
            if(_loc4_)
            {
               if(this.§<w§)
               {
                  this.§<w§.§<e§(this.§9f§.mClip);
               }
               this.§9f§.setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               this.§@!>§();
            }
            else
            {
               if(this.§<w§)
               {
                  this.§<w§.§-! §(this.§9f§.mClip);
               }
               if(this.§9f§.§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§9f§.setComponentState(§"r§.§5!D§);
               }
               this.§^e§();
            }
         }
         return _loc4_;
      }
      
      private function §@!>§() : void
      {
         var _loc1_:§+!6§ = null;
         var _loc2_:§8!=§ = null;
         for each(_loc1_ in this.§[m§)
         {
            _loc1_.§@!o§(true);
         }
         if(this.§21§ && this.§21§.§<w§)
         {
            this.§21§.§<w§.§<e§(this.§21§.§9f§.mClip);
         }
         for each(_loc2_ in this.§[!+§)
         {
            _loc2_.setVisibility(true);
         }
      }
      
      private function §^e§() : void
      {
         var _loc1_:§+!6§ = null;
         var _loc2_:§@O§ = null;
         var _loc3_:§8!=§ = null;
         for each(_loc1_ in this.§[m§)
         {
            _loc1_.§@!o§(false);
         }
         for each(_loc2_ in this.§`6§)
         {
            _loc2_.§]!#§(0);
            _loc2_.visible = false;
         }
         for each(_loc3_ in this.§[!+§)
         {
            _loc3_.setVisibility(false);
         }
      }
      
      public function §]"+§() : void
      {
         var _loc1_:§+!6§ = null;
         var _loc2_:§@O§ = null;
         for each(_loc1_ in this.§[m§)
         {
            _loc1_.§]"+§();
         }
         for each(_loc2_ in this.§`6§)
         {
            _loc2_.§]!#§(0);
            _loc2_.visible = false;
         }
      }
      
      public function §`!n§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param1 == 1)
         {
            if(this.§21§ == null)
            {
               return;
            }
            if(this.§21§.§#"+§())
            {
               _loc3_ = this.§[m§.indexOf(this.§21§);
               do
               {
                  _loc3_ = (_loc3_ + (!!param2 ? 1 : -1) + this.§[m§.length) % this.§[m§.length;
                  this.§21§ = this.§[m§[_loc3_];
               }
               while(!this.§21§.§9f§.visible);
               
            }
            this.§ !A§(this.§21§.§9f§,true);
         }
         else
         {
            this.§21§.§`!n§(param1 - 1,param2);
         }
      }
      
      public function §4!!§() : Vector.<§@O§>
      {
         if(this.§21§ != null)
         {
            return this.§21§.§4!!§();
         }
         return this.§`6§;
      }
      
      public function §'_§(param1:§[!&§) : void
      {
         this.§<w§ = param1;
      }
      
      public function §>"4§(param1:§2v§) : §+!6§
      {
         var _loc2_:§+!6§ = null;
         var _loc3_:§+!6§ = null;
         if(this.§9f§ == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§[m§)
         {
            _loc3_ = _loc2_.§>"4§(param1);
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §3!B§() : Vector.<§@O§>
      {
         var _loc2_:§+!6§ = null;
         var _loc1_:Vector.<§@O§> = new Vector.<§@O§>();
         for each(_loc2_ in this.§[m§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§3!B§());
         }
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<§@O§>();
         }
         if(this.§`6§)
         {
            _loc1_ = _loc1_.concat(this.§`6§);
         }
         return _loc1_;
      }
      
      private function §@!o§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(!this.§9f§)
         {
            return;
         }
         if(this.§^!Y§())
         {
            this.§9f§.setVisibility(param1 && §=,§.§if §.§9§(this.§9f§.mName));
            _loc2_ = §0!X§.§if §.§="'§.§?!b§(this.§9f§.mName);
            this.§9f§.setEnabled(_loc2_);
            this.§?K§(!_loc2_);
         }
         else
         {
            _loc3_ = param1;
            _loc3_ = _loc3_ && §=,§.§if §.§9§(this.§9f§.mName);
            _loc3_ = _loc3_ && §0!X§.§if §.§="'§.§?!b§(this.§9f§.mName);
            this.§9f§.setVisibility(_loc3_);
            this.§9f§.setEnabled(_loc3_);
         }
      }
      
      private function §?K§(param1:Boolean) : void
      {
         var _loc2_:Class = null;
         if(!this.§%!-§)
         {
            _loc2_ = §]!S§.§?! §("Level_icon");
            this.§%!-§ = new _loc2_();
            this.§9f§.mClip.parent.addChild(this.§%!-§);
            this.§%!-§.width = §&!2§;
            this.§%!-§.scaleY = this.§%!-§.scaleX;
            this.§%!-§.x = this.§9f§.x + this.§9f§.width / 2 - 5;
            this.§%!-§.y = this.§9f§.y + this.§9f§.height / 2 - 5;
         }
         this.§%!-§.visible = param1 && this.§9f§.visible;
      }
      
      public function §&j§(param1:Boolean = true) : void
      {
         var _loc2_:§+!6§ = null;
         if(this.§9f§)
         {
            this.§@!o§(param1);
         }
         for each(_loc2_ in this.§[m§)
         {
            _loc2_.§&j§(!!this.§9f§ ? Boolean(this.§9f§.visible) : true);
         }
      }
      
      private function §^!Y§() : Boolean
      {
         return ["Wood","Rock","Ice","Static","Snow","Fun","Wear","Food","Build","Misc"].indexOf(this.§9f§.mName) != -1;
      }
      
      public function §1o§(param1:String) : §2v§
      {
         var _loc2_:§+!6§ = null;
         var _loc3_:§2v§ = null;
         if(this.§#"5§(param1))
         {
            return this.§9f§;
         }
         for each(_loc2_ in this.§[m§)
         {
            _loc3_ = _loc2_.§1o§(param1);
            if(_loc3_)
            {
               if(this.§9f§ == null || this.§#"+§())
               {
                  return _loc3_;
               }
               return this.§9f§;
            }
         }
         return null;
      }
      
      private function §#"5§(param1:String) : Boolean
      {
         var _loc2_:§@O§ = null;
         if(this.§`6§ == null)
         {
            return false;
         }
         for each(_loc2_ in this.§`6§)
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
