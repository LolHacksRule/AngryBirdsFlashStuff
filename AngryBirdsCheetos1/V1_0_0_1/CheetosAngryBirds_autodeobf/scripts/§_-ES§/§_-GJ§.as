package §_-ES§
{
   import §_-3-§.§_-ki§;
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-L1§;
   import §_-9J§.§_-mr§;
   import §_-9J§.§_-xD§;
   import §_-U0§.§_-tF§;
   import §_-q6§.§_-ZW§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-GJ§ extends §_-L8§
   {
      
      public static const §_-yl§:int = 0;
      
      public static const §_-9k§:int = 1;
      
      public static const §_-Jw§:int = 2;
       
      
      public var §_-Gb§:String;
      
      public var §_-ZP§:Class;
      
      public var §_-Cv§:String = null;
      
      public var §_-Rr§:Array;
      
      public var §_-un§:int;
      
      public var §_-cD§:Number;
      
      public var §_-SI§:Number;
      
      public var §_-4H§:Number;
      
      public var §_-11§:Number;
      
      public var §_-Qe§:Number;
      
      public var §_-Ow§:Number;
      
      public var §_-hO§:Number;
      
      public var §_-N4§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-Ll§:int;
      
      public var §_-hH§:Number;
      
      public var §_-JX§:String = "";
      
      public var §_-V4§:int;
      
      public var §_-GY§:int;
      
      public var §_-Gw§:GlowFilter;
      
      public var §_-Cb§:Boolean = true;
      
      public var §_-y6§:int;
      
      public var §_-xy§:int;
      
      public var §_-xt§:Number = 0;
      
      public var §_-O0§:Number = 0;
      
      public var §_-7s§:Number = 0;
      
      public var §_-fx§:Number = 0;
      
      public var §_-Zi§:Boolean = false;
      
      public var §_-Gu§:Boolean = false;
      
      public var §_-C6§:MovieClip = null;
      
      public function §_-GJ§(param1:XML, param2:§_-L8§, param3:§_-ZW§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Gb§ = param1.@button;
         if(this.§_-Gb§.length > 0)
         {
            this.§_-ZP§ = §_-ki§.§_-pB§(this.§_-Gb§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-Cv§ = _loc5_;
         }
         this.§_-V4§ = §_-yl§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-V4§ = §_-9k§;
            }
         }
         this.§_-GY§ = §_-Jw§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-GY§ = §_-yl§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§_-Gw§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-l0§[§_-l0§.length] = new §_-Ng§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-l0§[§_-l0§.length] = new §_-Ng§(_loc18_,this);
         }
         this.§_-cD§ = mClip.getChildByName("Surface").x;
         this.§_-SI§ = mClip.getChildByName("Surface").y;
         this.§_-4H§ = mClip.getChildByName("Surface").width;
         this.§_-11§ = mClip.getChildByName("Surface").height;
         this.§_-Qe§ = mClip.getChildByName("Button_Area1").x - this.§_-cD§;
         this.§_-Ow§ = mClip.getChildByName("Button_Area1").y - this.§_-SI§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-cD§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-SI§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-hH§ = _loc9_.bottom - this.§_-SI§ - this.§_-Ow§;
         this.§_-hO§ = _loc7_ - this.§_-Qe§;
         this.§_-N4§ = _loc8_ - this.§_-Ow§;
         if(Math.abs(this.§_-hO§) < 3)
         {
            this.§_-hO§ = 0;
         }
         if(Math.abs(this.§_-N4§) < 3)
         {
            this.§_-N4§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-hO§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-Qe§ - this.§_-Qe§) / this.§_-hO§;
         }
         if(this.§_-N4§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-Ow§ - this.§_-Ow§) / this.§_-N4§;
         }
         this.§_-un§ = Math.min(_loc10_,_loc11_);
         this.§_-Cb§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-y6§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-y6§ = this.§_-un§;
         }
         this.§_-Ll§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§_-cD§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§_-SI§;
            this.mButtonMarginX2 = _loc19_ - this.§_-Qe§;
            this.mButtonMarginY2 = _loc20_ - this.§_-Ow§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-Cb§)
            {
               this.§_-Ll§ = 1 + (mClip.getChildByName("Surface").height - this.§_-Ow§ - this.§_-Ow§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-Ll§ = 1 + (mClip.getChildByName("Surface").width - this.§_-Qe§ - this.§_-Qe§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-C6§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-7s§ = this.§_-C6§.x - mClip.getChildByName("Surface").x;
            this.§_-fx§ = this.§_-C6§.y - mClip.getChildByName("Surface").y;
            this.§_-xt§ = this.§_-C6§.x + this.§_-C6§.width - (this.§_-C6§.x + mClip.getChildByName("Surface").width);
            this.§_-O0§ = this.§_-C6§.y + this.§_-C6§.height - (this.§_-C6§.y + mClip.getChildByName("Surface").height);
            this.§_-Zi§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-Gu§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-xy§ = §_-L1§.§_-AA§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-xy§ = §_-L1§.§_-EL§;
            }
         }
         this.§_-8l§();
      }
      
      public function §_-8l§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§_-4R§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§_-b6§ = null;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(param2 == null)
         {
            param2 = §_-b6§;
         }
         this.§_-Rr§ = new Array();
         this.§_-PZ§();
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
            §_-l0§[§_-l0§.length] = new §_-4R§(_loc6_,this,null,_loc5_);
            _loc7_ = §_-l0§[§_-l0§.length - 1];
            this.§_-Rr§[this.§_-Rr§.length] = new §_-L1§(this.§_-xy§,_loc4_);
            _loc8_ = this.§_-Qe§;
            _loc9_ = this.§_-un§;
            if((param1[_loc3_] as Array).length < _loc9_)
            {
               _loc9_ = (param1[_loc3_] as Array).length;
            }
            if(this.§_-GY§ == §_-yl§)
            {
               _loc8_ = (this.§_-4H§ - (_loc9_ - 1) * this.§_-hO§) / 2;
            }
            _loc10_ = 0;
            while(_loc10_ < (param1[_loc3_] as Array).length)
            {
               _loc11_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[2])
               {
                  _loc7_.§_-l0§[_loc7_.§_-l0§.length] = new param2(_loc11_,_loc7_,((param1[_loc3_] as Array)[_loc10_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc7_.§_-l0§[_loc7_.§_-l0§.length] = new param2(_loc11_,_loc7_,new this.§_-ZP§() as MovieClip);
               }
               _loc12_ = _loc7_.§_-l0§[_loc7_.§_-l0§.length - 1];
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[1] != null)
               {
                  _loc13_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[1] as MovieClip;
                  _loc12_.§_-EG§(_loc13_,this.§_-Cv§);
                  if(this.§_-V4§ == §_-9k§)
                  {
                     _loc14_ = 2;
                     _loc13_.y -= _loc13_.height / 2;
                     if(this.§_-Cv§ == null)
                     {
                        _loc13_.y -= _loc14_;
                     }
                  }
               }
               if(this.§_-Ll§ == 1)
               {
                  _loc12_.x = _loc8_ + _loc10_ * this.§_-hO§;
                  _loc12_.y = this.§_-Ow§ + _loc10_ * this.§_-N4§;
               }
               else
               {
                  _loc15_ = _loc10_ / (this.§_-un§ * this.§_-Ll§);
                  _loc16_ = (_loc10_ - _loc15_ * this.§_-un§ * this.§_-Ll§) / this.§_-un§;
                  _loc17_ = (_loc10_ - _loc15_ * this.§_-un§ * this.§_-Ll§) % this.§_-un§;
                  if(this.§_-Cb§)
                  {
                     _loc12_.x = _loc8_ + _loc17_ * this.§_-hO§ + _loc15_ * this.§_-un§ * this.§_-hO§;
                     _loc12_.y = this.§_-Ow§ + _loc16_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc12_.x = _loc8_ + _loc16_ * this.mButtonMarginX2;
                     _loc12_.y = this.§_-Ow§ + _loc17_ * this.§_-N4§ + _loc15_ * this.§_-un§ * this.§_-N4§;
                  }
               }
               (this.§_-Rr§[this.§_-Rr§.length - 1] as §_-L1§).§_-CI§(_loc12_);
               _loc10_++;
            }
            (this.§_-Rr§[this.§_-Rr§.length - 1] as §_-L1§).§_-Er§("");
            _loc7_.§_-Aq§(this.§_-un§,this.§_-cD§,this.§_-SI§,this.§_-y6§ * this.§_-hO§,this.§_-y6§ * this.§_-N4§,this.§_-Ll§,this.§_-y6§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-dJ§() : int
      {
         return this.§_-un§;
      }
      
      public function get §_-WB§() : int
      {
         if(this.§_-dJ§ == 0)
         {
            return 0;
         }
         return this.§_-ps§(this.§_-JX§).§_-Fh§.length / this.§_-dJ§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-xD§) : void
      {
         var _loc5_:§_-L1§ = null;
         var _loc4_:§_-4R§ = getItemByName(this.§_-JX§) as §_-4R§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-2§(_loc4_.§_-T§ - 1);
               this.§_-jD§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-2§(_loc4_.§_-T§ + 1);
               this.§_-jD§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-xD§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-xD§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-mr§)
         {
            if((_loc5_ = this.§_-ps§((param3 as §_-mr§).mParentContainer.mName.toUpperCase())) && param3 is §_-b6§)
            {
               _loc5_.§_-Er§((param3 as §_-mr§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-l3§(param1:String, param2:int) : void
      {
         var _loc3_:§_-4R§ = getItemByName(param1) as §_-4R§;
         if(_loc3_)
         {
            _loc3_.§_-2§(param2);
            this.§_-jD§();
         }
      }
      
      public function §_-ps§(param1:String) : §_-L1§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Rr§.length)
         {
            if(param1.toUpperCase() == (this.§_-Rr§[_loc2_] as §_-L1§).mName.toUpperCase())
            {
               return this.§_-Rr§[_loc2_] as §_-L1§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Ww§(param1:String) : void
      {
         this.§_-JX§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-l0§.length)
         {
            if(§_-l0§[_loc2_] is §_-4R§)
            {
               if((§_-l0§[_loc2_] as §_-4R§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-l0§[_loc2_] as §_-4R§).setActiveStatus(true);
                  if(this.§_-Zi§)
                  {
                     this.§_-C6§.x = (§_-l0§[_loc2_] as §_-4R§).x + this.§_-7s§;
                     this.§_-C6§.width = (§_-l0§[_loc2_] as §_-4R§).width + this.§_-xt§;
                  }
                  if(this.§_-Gu§)
                  {
                     this.§_-C6§.y = (§_-l0§[_loc2_] as §_-4R§).y + this.§_-fx§;
                     this.§_-C6§.height = (§_-l0§[_loc2_] as §_-4R§).height + this.§_-O0§;
                  }
               }
               else
               {
                  (§_-l0§[_loc2_] as §_-4R§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-jD§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-L1§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-Rr§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-jD§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-4R§ = getItemByName(this.§_-JX§) as §_-4R§;
         if(_loc1_)
         {
            if(_loc1_.§_-T§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-Ng§).setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-Ng§).setComponentState(§_-DA§.§_-La§);
            }
            if(_loc1_.§_-T§ < _loc1_.§_-LR§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-Ng§).setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-Ng§).setComponentState(§_-DA§.§_-La§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-Ng§).setComponentState(§_-DA§.§_-La§);
            (getItemByName("Button_Scroll2") as §_-Ng§).setComponentState(§_-DA§.§_-La§);
         }
      }
      
      public function §_-PZ§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-l0§.length)
         {
            if(§_-l0§[_loc1_] is §_-4R§)
            {
               (§_-l0§[_loc1_] as §_-4R§).clear();
               §_-l0§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-Ww§("");
      }
      
      public function §_-wE§() : void
      {
         var _loc1_:§_-L1§ = null;
         for each(_loc1_ in this.§_-Rr§)
         {
            _loc1_.§_-wE§();
         }
      }
      
      public function §_-oV§() : Array
      {
         if(this.§_-ps§(this.§_-JX§) == null)
         {
            §_-tF§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-ps§(this.§_-JX§).§_-P3§();
      }
      
      public function §_-Dd§(param1:Array) : void
      {
         this.§_-ps§(this.§_-JX§).§_-Dd§(param1);
      }
      
      public function §_-Vw§(param1:Number) : void
      {
         this.§_-ps§(this.§_-JX§).§_-Vw§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-ZP§ = null;
         this.§_-Rr§ = null;
         this.§_-Gw§ = null;
      }
   }
}
