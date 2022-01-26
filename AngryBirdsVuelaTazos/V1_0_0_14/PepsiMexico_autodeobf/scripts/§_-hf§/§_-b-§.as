package §_-hf§
{
   import §_-Eo§.§_-R4§;
   import §_-Jx§.§_-0z§;
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-Tc§;
   import §_-Jx§.§_-dI§;
   import §_-W7§.§_-jT§;
   import §_-Yh§.§_-fA§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-b-§ extends §_-WL§
   {
      
      public static const §_-fu§:int = 0;
      
      public static const §_-VA§:int = 1;
      
      public static const §_-yp§:int = 2;
       
      
      public var §_-Ct§:String;
      
      public var §_-xC§:Class;
      
      public var §_-kw§:String = null;
      
      public var §_-8z§:Array;
      
      public var §_-Ka§:int;
      
      public var §true §:Number;
      
      public var §_-lu§:Number;
      
      public var §_-Gi§:Number;
      
      public var §_-s8§:Number;
      
      public var §_-90§:Number;
      
      public var §_-qW§:Number;
      
      public var §_-cV§:Number;
      
      public var §_-7S§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-0j§:int;
      
      public var §_-80§:Number;
      
      public var §_-Bb§:String = "";
      
      public var §_-WC§:int;
      
      public var §_-8E§:int;
      
      public var §_-PW§:GlowFilter;
      
      public var §_-LB§:Boolean = true;
      
      public var §_-Zn§:int;
      
      public var §_-iX§:int;
      
      public var §_-Cx§:Number = 0;
      
      public var §_-Yv§:Number = 0;
      
      public var §_-Gk§:Number = 0;
      
      public var §_-He§:Number = 0;
      
      public var §_-nv§:Boolean = false;
      
      public var §_-4L§:Boolean = false;
      
      public var §_-Bu§:MovieClip = null;
      
      public function §_-b-§(param1:XML, param2:§_-WL§, param3:§_-fA§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Ct§ = param1.@button;
         if(this.§_-Ct§.length > 0)
         {
            this.§_-xC§ = §_-jT§.§_-kv§(this.§_-Ct§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-kw§ = _loc5_;
         }
         this.§_-WC§ = §_-fu§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-WC§ = §_-VA§;
            }
         }
         this.§_-8E§ = §_-yp§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-8E§ = §_-fu§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§_-PW§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-pf§[§_-pf§.length] = new §_-6o§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-pf§[§_-pf§.length] = new §_-6o§(_loc18_,this);
         }
         this.§true § = mClip.getChildByName("Surface").x;
         this.§_-lu§ = mClip.getChildByName("Surface").y;
         this.§_-Gi§ = mClip.getChildByName("Surface").width;
         this.§_-s8§ = mClip.getChildByName("Surface").height;
         this.§_-90§ = mClip.getChildByName("Button_Area1").x - this.§true §;
         this.§_-qW§ = mClip.getChildByName("Button_Area1").y - this.§_-lu§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§true §;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-lu§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-80§ = _loc9_.bottom - this.§_-lu§ - this.§_-qW§;
         this.§_-cV§ = _loc7_ - this.§_-90§;
         this.§_-7S§ = _loc8_ - this.§_-qW§;
         if(Math.abs(this.§_-cV§) < 3)
         {
            this.§_-cV§ = 0;
         }
         if(Math.abs(this.§_-7S§) < 3)
         {
            this.§_-7S§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-cV§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-90§ - this.§_-90§) / this.§_-cV§;
         }
         if(this.§_-7S§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-qW§ - this.§_-qW§) / this.§_-7S§;
         }
         this.§_-Ka§ = Math.min(_loc10_,_loc11_);
         this.§_-LB§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-Zn§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-Zn§ = this.§_-Ka§;
         }
         this.§_-0j§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§true §;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§_-lu§;
            this.mButtonMarginX2 = _loc19_ - this.§_-90§;
            this.mButtonMarginY2 = _loc20_ - this.§_-qW§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-LB§)
            {
               this.§_-0j§ = 1 + (mClip.getChildByName("Surface").height - this.§_-qW§ - this.§_-qW§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-0j§ = 1 + (mClip.getChildByName("Surface").width - this.§_-90§ - this.§_-90§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-Bu§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-Gk§ = this.§_-Bu§.x - mClip.getChildByName("Surface").x;
            this.§_-He§ = this.§_-Bu§.y - mClip.getChildByName("Surface").y;
            this.§_-Cx§ = this.§_-Bu§.x + this.§_-Bu§.width - (this.§_-Bu§.x + mClip.getChildByName("Surface").width);
            this.§_-Yv§ = this.§_-Bu§.y + this.§_-Bu§.height - (this.§_-Bu§.y + mClip.getChildByName("Surface").height);
            this.§_-nv§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-4L§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-iX§ = §_-0z§.§_-Vc§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-iX§ = §_-0z§.§_-s4§;
            }
         }
         this.§_-9§();
      }
      
      public function §_-9§(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:§_-RT§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§_-dJ§ = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.§_-8z§ = new Array();
         this.§_-Dl§();
         if(param1 == null)
         {
            param1 = getParentView().getRepeaterDataXML(mName);
         }
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = mName + "_Tab_" + _loc2_;
            _loc4_ = new MovieClip();
            (_loc5_ = <Container/>).@name = _loc3_;
            §_-pf§[§_-pf§.length] = new §_-RT§(_loc5_,this,null,_loc4_);
            _loc6_ = §_-pf§[§_-pf§.length - 1];
            this.§_-8z§[this.§_-8z§.length] = new §_-0z§(this.§_-iX§,_loc3_);
            _loc7_ = this.§_-90§;
            _loc8_ = this.§_-Ka§;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.§_-8E§ == §_-fu§)
            {
               _loc7_ = (this.§_-Gi§ - (_loc8_ - 1) * this.§_-cV§) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.§_-pf§[_loc6_.§_-pf§.length] = new §_-dJ§(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.§_-pf§[_loc6_.§_-pf§.length] = new §_-dJ§(_loc10_,_loc6_,new this.§_-xC§() as MovieClip);
               }
               _loc11_ = _loc6_.§_-pf§[_loc6_.§_-pf§.length - 1] as §_-dJ§;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.§_-Hl§(_loc12_,this.§_-kw§);
                  if(this.§_-WC§ == §_-VA§)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.§_-kw§ == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.§_-0j§ == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.§_-cV§;
                  _loc11_.y = this.§_-qW§ + _loc9_ * this.§_-7S§;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.§_-Ka§ * this.§_-0j§);
                  _loc15_ = (_loc9_ - _loc14_ * this.§_-Ka§ * this.§_-0j§) / this.§_-Ka§;
                  _loc16_ = (_loc9_ - _loc14_ * this.§_-Ka§ * this.§_-0j§) % this.§_-Ka§;
                  if(this.§_-LB§)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.§_-cV§ + _loc14_ * this.§_-Ka§ * this.§_-cV§;
                     _loc11_.y = this.§_-qW§ + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.§_-qW§ + _loc16_ * this.§_-7S§ + _loc14_ * this.§_-Ka§ * this.§_-7S§;
                  }
               }
               (this.§_-8z§[this.§_-8z§.length - 1] as §_-0z§).§_-yz§(_loc11_);
               _loc9_++;
            }
            (this.§_-8z§[this.§_-8z§.length - 1] as §_-0z§).§_-Vn§("");
            _loc6_.§_-pH§(this.§_-Ka§,this.§true §,this.§_-lu§,this.§_-Zn§ * this.§_-cV§,this.§_-Zn§ * this.§_-7S§,this.§_-0j§,this.§_-Zn§);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-sR§() : int
      {
         return this.§_-Ka§;
      }
      
      public function get §_-x6§() : int
      {
         if(this.§_-sR§ == 0)
         {
            return 0;
         }
         return this.§_-ci§(this.§_-Bb§).§_-uf§.length / this.§_-sR§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-Ao§) : void
      {
         var _loc5_:§_-0z§ = null;
         var _loc4_:§_-RT§ = getItemByName(this.§_-Bb§) as §_-RT§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-xQ§(_loc4_.§_-U4§ - 1);
               this.§_-j0§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-xQ§(_loc4_.§_-U4§ + 1);
               this.§_-j0§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-Ao§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-Ao§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-dI§)
         {
            if((_loc5_ = this.§_-ci§((param3 as §_-dI§).mParentContainer.mName.toUpperCase())) && param3 is §_-dJ§)
            {
               _loc5_.§_-Vn§((param3 as §_-dI§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-r7§(param1:String, param2:int) : void
      {
         var _loc3_:§_-RT§ = getItemByName(param1) as §_-RT§;
         if(_loc3_)
         {
            _loc3_.§_-xQ§(param2);
            this.§_-j0§();
         }
      }
      
      public function §_-ci§(param1:String) : §_-0z§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-8z§.length)
         {
            if(param1.toUpperCase() == (this.§_-8z§[_loc2_] as §_-0z§).mName.toUpperCase())
            {
               return this.§_-8z§[_loc2_] as §_-0z§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-S1§(param1:String) : void
      {
         this.§_-Bb§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-pf§.length)
         {
            if(§_-pf§[_loc2_] is §_-RT§)
            {
               if((§_-pf§[_loc2_] as §_-RT§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-pf§[_loc2_] as §_-RT§).setActiveStatus(true);
                  if(this.§_-nv§)
                  {
                     this.§_-Bu§.x = (§_-pf§[_loc2_] as §_-RT§).x + this.§_-Gk§;
                     this.§_-Bu§.width = (§_-pf§[_loc2_] as §_-RT§).width + this.§_-Cx§;
                  }
                  if(this.§_-4L§)
                  {
                     this.§_-Bu§.y = (§_-pf§[_loc2_] as §_-RT§).y + this.§_-He§;
                     this.§_-Bu§.height = (§_-pf§[_loc2_] as §_-RT§).height + this.§_-Yv§;
                  }
               }
               else
               {
                  (§_-pf§[_loc2_] as §_-RT§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-j0§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-0z§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-8z§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-j0§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-RT§ = getItemByName(this.§_-Bb§) as §_-RT§;
         if(_loc1_)
         {
            if(_loc1_.§_-U4§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-6o§).setComponentState(§_-Tc§.§_-WJ§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-6o§).setComponentState(§_-Tc§.§_-9Z§);
            }
            if(_loc1_.§_-U4§ < _loc1_.§_-XH§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-6o§).setComponentState(§_-Tc§.§_-WJ§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-6o§).setComponentState(§_-Tc§.§_-9Z§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-6o§).setComponentState(§_-Tc§.§_-9Z§);
            (getItemByName("Button_Scroll2") as §_-6o§).setComponentState(§_-Tc§.§_-9Z§);
         }
      }
      
      public function §_-Dl§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-pf§.length)
         {
            if(§_-pf§[_loc1_] is §_-RT§)
            {
               (§_-pf§[_loc1_] as §_-RT§).clear();
               §_-pf§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-S1§("");
      }
      
      public function §_-Ip§() : void
      {
         var _loc1_:§_-0z§ = null;
         for each(_loc1_ in this.§_-8z§)
         {
            _loc1_.§_-Ip§();
         }
      }
      
      public function §_-U§() : Array
      {
         if(this.§_-ci§(this.§_-Bb§) == null)
         {
            §_-R4§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-ci§(this.§_-Bb§).§_-lP§();
      }
      
      public function §_-EE§(param1:Array) : void
      {
         this.§_-ci§(this.§_-Bb§).§_-EE§(param1);
      }
      
      public function §_-YP§(param1:Number) : void
      {
         this.§_-ci§(this.§_-Bb§).§_-YP§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-xC§ = null;
         this.§_-8z§ = null;
         this.§_-PW§ = null;
      }
   }
}
