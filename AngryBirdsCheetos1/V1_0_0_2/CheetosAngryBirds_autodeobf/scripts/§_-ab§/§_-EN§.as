package §_-ab§
{
   import §_-A§.§_-Hw§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-Ve§;
   import §_-A§.§_-YT§;
   import §_-Eq§.§_-q§;
   import §_-aA§.§_-I0§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-EN§ extends §_-IP§
   {
      
      public static const §_-cU§:int = 0;
      
      public static const §_-KY§:int = 1;
      
      public static const §throw§:int = 2;
       
      
      public var §_-8H§:String;
      
      public var §_-hi§:Class;
      
      public var §_-Ii§:String = null;
      
      public var §_-gf§:Array;
      
      public var §_-Af§:int;
      
      public var §_-TN§:Number;
      
      public var §_-4V§:Number;
      
      public var §_-io§:Number;
      
      public var §_-80§:Number;
      
      public var §_-B6§:Number;
      
      public var §_-2b§:Number;
      
      public var §_-Mm§:Number;
      
      public var §_-PY§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-Fg§:int;
      
      public var §_-XS§:Number;
      
      public var §_-rM§:String = "";
      
      public var §_-e7§:int;
      
      public var §_-vJ§:int;
      
      public var §_-ja§:GlowFilter;
      
      public var §_-9n§:Boolean = true;
      
      public var §_-bE§:int;
      
      public var §_-UA§:int;
      
      public var §_-Mv§:Number = 0;
      
      public var §_-nD§:Number = 0;
      
      public var §_-7W§:Number = 0;
      
      public var §_-0-h§:Number = 0;
      
      public var § each§:Boolean = false;
      
      public var §_-0N§:Boolean = false;
      
      public var §_-eT§:MovieClip = null;
      
      public function §_-EN§(param1:XML, param2:§_-IP§, param3:§_-S6§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-8H§ = param1.@button;
         if(this.§_-8H§.length > 0)
         {
            this.§_-hi§ = §_-q§.§_-Ti§(this.§_-8H§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-Ii§ = _loc5_;
         }
         this.§_-e7§ = §_-cU§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-e7§ = §_-KY§;
            }
         }
         this.§_-vJ§ = §throw§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-vJ§ = §_-cU§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§_-ja§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-uU§[§_-uU§.length] = new §_-q4§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-uU§[§_-uU§.length] = new §_-q4§(_loc18_,this);
         }
         this.§_-TN§ = mClip.getChildByName("Surface").x;
         this.§_-4V§ = mClip.getChildByName("Surface").y;
         this.§_-io§ = mClip.getChildByName("Surface").width;
         this.§_-80§ = mClip.getChildByName("Surface").height;
         this.§_-B6§ = mClip.getChildByName("Button_Area1").x - this.§_-TN§;
         this.§_-2b§ = mClip.getChildByName("Button_Area1").y - this.§_-4V§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-TN§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-4V§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-XS§ = _loc9_.bottom - this.§_-4V§ - this.§_-2b§;
         this.§_-Mm§ = _loc7_ - this.§_-B6§;
         this.§_-PY§ = _loc8_ - this.§_-2b§;
         if(Math.abs(this.§_-Mm§) < 3)
         {
            this.§_-Mm§ = 0;
         }
         if(Math.abs(this.§_-PY§) < 3)
         {
            this.§_-PY§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-Mm§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-B6§ - this.§_-B6§) / this.§_-Mm§;
         }
         if(this.§_-PY§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-2b§ - this.§_-2b§) / this.§_-PY§;
         }
         this.§_-Af§ = Math.min(_loc10_,_loc11_);
         this.§_-9n§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-bE§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-bE§ = this.§_-Af§;
         }
         this.§_-Fg§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§_-TN§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§_-4V§;
            this.mButtonMarginX2 = _loc19_ - this.§_-B6§;
            this.mButtonMarginY2 = _loc20_ - this.§_-2b§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-9n§)
            {
               this.§_-Fg§ = 1 + (mClip.getChildByName("Surface").height - this.§_-2b§ - this.§_-2b§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-Fg§ = 1 + (mClip.getChildByName("Surface").width - this.§_-B6§ - this.§_-B6§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-eT§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-7W§ = this.§_-eT§.x - mClip.getChildByName("Surface").x;
            this.§_-0-h§ = this.§_-eT§.y - mClip.getChildByName("Surface").y;
            this.§_-Mv§ = this.§_-eT§.x + this.§_-eT§.width - (this.§_-eT§.x + mClip.getChildByName("Surface").width);
            this.§_-nD§ = this.§_-eT§.y + this.§_-eT§.height - (this.§_-eT§.y + mClip.getChildByName("Surface").height);
            this.§ each§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-0N§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-UA§ = §_-Ve§.§_-oN§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-UA§ = §_-Ve§.§_-5M§;
            }
         }
         this.§_-oM§();
      }
      
      public function §_-oM§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§_-Eg§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§_-Wr§ = null;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(param2 == null)
         {
            param2 = §_-Wr§;
         }
         this.§_-gf§ = new Array();
         this.§_-m7§();
         if(param1 == null)
         {
            param1 = getParentView().getRepeaterDataXML(mName);
         }
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            §_-uU§[§_-uU§.length] = new §_-Eg§(_loc6_,this,null,_loc5_);
            _loc7_ = §_-uU§[§_-uU§.length - 1];
            this.§_-gf§[this.§_-gf§.length] = new §_-Ve§(this.§_-UA§,_loc4_);
            _loc8_ = this.§_-B6§;
            _loc9_ = this.§_-Af§;
            if((param1[_loc3_] as Array).length < _loc9_)
            {
               _loc9_ = (param1[_loc3_] as Array).length;
            }
            if(this.§_-vJ§ == §_-cU§)
            {
               _loc8_ = (this.§_-io§ - (_loc9_ - 1) * this.§_-Mm§) / 2;
            }
            _loc10_ = 0;
            while(_loc10_ < (param1[_loc3_] as Array).length)
            {
               _loc11_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[2])
               {
                  _loc7_.§_-uU§[_loc7_.§_-uU§.length] = new param2(_loc11_,_loc7_,((param1[_loc3_] as Array)[_loc10_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc7_.§_-uU§[_loc7_.§_-uU§.length] = new param2(_loc11_,_loc7_,new this.§_-hi§() as MovieClip);
               }
               _loc12_ = _loc7_.§_-uU§[_loc7_.§_-uU§.length - 1];
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[1] != null)
               {
                  _loc13_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[1] as MovieClip;
                  _loc12_.§_-aO§(_loc13_,this.§_-Ii§);
                  if(this.§_-e7§ == §_-KY§)
                  {
                     _loc14_ = 2;
                     _loc13_.y -= _loc13_.height / 2;
                     if(this.§_-Ii§ == null)
                     {
                        _loc13_.y -= _loc14_;
                     }
                  }
               }
               if(this.§_-Fg§ == 1)
               {
                  _loc12_.x = _loc8_ + _loc10_ * this.§_-Mm§;
                  _loc12_.y = this.§_-2b§ + _loc10_ * this.§_-PY§;
               }
               else
               {
                  _loc15_ = _loc10_ / (this.§_-Af§ * this.§_-Fg§);
                  _loc16_ = (_loc10_ - _loc15_ * this.§_-Af§ * this.§_-Fg§) / this.§_-Af§;
                  _loc17_ = (_loc10_ - _loc15_ * this.§_-Af§ * this.§_-Fg§) % this.§_-Af§;
                  if(this.§_-9n§)
                  {
                     _loc12_.x = _loc8_ + _loc17_ * this.§_-Mm§ + _loc15_ * this.§_-Af§ * this.§_-Mm§;
                     _loc12_.y = this.§_-2b§ + _loc16_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc12_.x = _loc8_ + _loc16_ * this.mButtonMarginX2;
                     _loc12_.y = this.§_-2b§ + _loc17_ * this.§_-PY§ + _loc15_ * this.§_-Af§ * this.§_-PY§;
                  }
               }
               (this.§_-gf§[this.§_-gf§.length - 1] as §_-Ve§).§_-hT§(_loc12_);
               _loc10_++;
            }
            (this.§_-gf§[this.§_-gf§.length - 1] as §_-Ve§).§_-va§("");
            _loc7_.§_-j5§(this.§_-Af§,this.§_-TN§,this.§_-4V§,this.§_-bE§ * this.§_-Mm§,this.§_-bE§ * this.§_-PY§,this.§_-Fg§,this.§_-bE§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-CJ§() : int
      {
         return this.§_-Af§;
      }
      
      public function get §_-YH§() : int
      {
         if(this.§_-CJ§ == 0)
         {
            return 0;
         }
         return this.§_-F9§(this.§_-rM§).§_-0x§.length / this.§_-CJ§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-KQ§) : void
      {
         var _loc5_:§_-Ve§ = null;
         var _loc4_:§_-Eg§ = getItemByName(this.§_-rM§) as §_-Eg§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-lw§(_loc4_.§_-jt§ - 1);
               this.§_-tm§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-lw§(_loc4_.§_-jt§ + 1);
               this.§_-tm§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-KQ§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-KQ§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-Hw§)
         {
            if((_loc5_ = this.§_-F9§((param3 as §_-Hw§).mParentContainer.mName.toUpperCase())) && param3 is §_-Wr§)
            {
               _loc5_.§_-va§((param3 as §_-Hw§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-31§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Eg§ = getItemByName(param1) as §_-Eg§;
         if(_loc3_)
         {
            _loc3_.§_-lw§(param2);
            this.§_-tm§();
         }
      }
      
      public function §_-F9§(param1:String) : §_-Ve§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-gf§.length)
         {
            if(param1.toUpperCase() == (this.§_-gf§[_loc2_] as §_-Ve§).mName.toUpperCase())
            {
               return this.§_-gf§[_loc2_] as §_-Ve§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-C5§(param1:String) : void
      {
         this.§_-rM§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-uU§.length)
         {
            if(§_-uU§[_loc2_] is §_-Eg§)
            {
               if((§_-uU§[_loc2_] as §_-Eg§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-uU§[_loc2_] as §_-Eg§).setActiveStatus(true);
                  if(this.§ each§)
                  {
                     this.§_-eT§.x = (§_-uU§[_loc2_] as §_-Eg§).x + this.§_-7W§;
                     this.§_-eT§.width = (§_-uU§[_loc2_] as §_-Eg§).width + this.§_-Mv§;
                  }
                  if(this.§_-0N§)
                  {
                     this.§_-eT§.y = (§_-uU§[_loc2_] as §_-Eg§).y + this.§_-0-h§;
                     this.§_-eT§.height = (§_-uU§[_loc2_] as §_-Eg§).height + this.§_-nD§;
                  }
               }
               else
               {
                  (§_-uU§[_loc2_] as §_-Eg§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-tm§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-Ve§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-gf§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-tm§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-Eg§ = getItemByName(this.§_-rM§) as §_-Eg§;
         if(_loc1_)
         {
            if(_loc1_.§_-jt§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-q4§).setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-q4§).setComponentState(§_-YT§.§_-39§);
            }
            if(_loc1_.§_-jt§ < _loc1_.§_-K4§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-q4§).setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-q4§).setComponentState(§_-YT§.§_-39§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-q4§).setComponentState(§_-YT§.§_-39§);
            (getItemByName("Button_Scroll2") as §_-q4§).setComponentState(§_-YT§.§_-39§);
         }
      }
      
      public function §_-m7§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-uU§.length)
         {
            if(§_-uU§[_loc1_] is §_-Eg§)
            {
               (§_-uU§[_loc1_] as §_-Eg§).clear();
               §_-uU§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-C5§("");
      }
      
      public function §_-G2§() : void
      {
         var _loc1_:§_-Ve§ = null;
         for each(_loc1_ in this.§_-gf§)
         {
            _loc1_.§_-G2§();
         }
      }
      
      public function §_-ii§() : Array
      {
         if(this.§_-F9§(this.§_-rM§) == null)
         {
            §_-I0§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-F9§(this.§_-rM§).§_-Nb§();
      }
      
      public function §_-PE§(param1:Array) : void
      {
         this.§_-F9§(this.§_-rM§).§_-PE§(param1);
      }
      
      public function §_-KA§(param1:Number) : void
      {
         this.§_-F9§(this.§_-rM§).§_-KA§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-hi§ = null;
         this.§_-gf§ = null;
         this.§_-ja§ = null;
      }
   }
}
