package §_-E-§
{
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-Kf§;
   import §_-PK§.§_-ZR§;
   import §_-PK§.§_-ds§;
   import §_-Ux§.§_-2E§;
   import §_-ec§.§_-GK§;
   import §_-ot§.§_-o6§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-IM§ extends §_-hw§
   {
      
      public static const §_-f8§:int = 0;
      
      public static const §_-3V§:int = 1;
      
      public static const §_-bG§:int = 2;
       
      
      public var §_-ls§:String;
      
      public var §_-wM§:Class;
      
      public var §_-9G§:String = null;
      
      public var §_-ek§:Array;
      
      public var §_-2n§:int;
      
      public var §_-r§:Number;
      
      public var §_-rK§:Number;
      
      public var §_-P1§:Number;
      
      public var §_-b9§:Number;
      
      public var §_-BN§:Number;
      
      public var §_-6§:Number;
      
      public var §_-V5§:Number;
      
      public var §_-Zz§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-un§:int;
      
      public var §_-K5§:Number;
      
      public var §_-HS§:String = "";
      
      public var §_-UP§:int;
      
      public var §_-bS§:int;
      
      public var §_-3N§:GlowFilter;
      
      public var §_-h9§:Boolean = true;
      
      public var §_-kC§:int;
      
      public var §_-Nk§:int;
      
      public function §_-IM§(param1:XML, param2:§_-hw§, param3:§_-2E§, param4:MovieClip = null)
      {
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:Number = NaN;
         var _loc16_:XML = null;
         var _loc17_:XML = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-ls§ = param1.@button;
         if(this.§_-ls§.length > 0)
         {
            this.§_-wM§ = §_-GK§.§_-dR§(this.§_-ls§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-9G§ = _loc5_;
         }
         this.§_-UP§ = §_-f8§;
         if(param1.@buttonAlign)
         {
            if((_loc13_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-UP§ = §_-3V§;
            }
         }
         this.§_-bS§ = §_-bG§;
         if(param1.@surfaceAlign)
         {
            if((_loc14_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-bS§ = §_-f8§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc15_ = param1.@GlowFilter;
            this.§_-3N§ = new GlowFilter(_loc15_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc16_ = <Button/>).@name = "Button_Scroll1";
            _loc16_.@MouseUp = "SCROLL_LEFT";
            §_-Oe§[§_-Oe§.length] = new §_-Fy§(_loc16_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll2";
            _loc17_.@MouseUp = "SCROLL_RIGHT";
            §_-Oe§[§_-Oe§.length] = new §_-Fy§(_loc17_,this);
         }
         this.§_-r§ = mClip.getChildByName("Surface").x;
         this.§_-rK§ = mClip.getChildByName("Surface").y;
         this.§_-P1§ = mClip.getChildByName("Surface").width;
         this.§_-b9§ = mClip.getChildByName("Surface").height;
         this.§_-BN§ = mClip.getChildByName("Button_Area1").x - this.§_-r§;
         this.§_-6§ = mClip.getChildByName("Button_Area1").y - this.§_-rK§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-r§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-rK§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-K5§ = _loc9_.bottom - this.§_-rK§ - this.§_-6§;
         this.§_-V5§ = _loc7_ - this.§_-BN§;
         this.§_-Zz§ = _loc8_ - this.§_-6§;
         if(Math.abs(this.§_-V5§) < 3)
         {
            this.§_-V5§ = 0;
         }
         if(Math.abs(this.§_-Zz§) < 3)
         {
            this.§_-Zz§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-V5§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-BN§ - this.§_-BN§) / this.§_-V5§;
         }
         if(this.§_-Zz§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-6§ - this.§_-6§) / this.§_-Zz§;
         }
         this.§_-2n§ = Math.min(_loc10_,_loc11_);
         this.§_-h9§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-kC§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-kC§ = this.§_-2n§;
         }
         this.§_-un§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc18_ = mClip.getChildByName("Button_Area3").x - this.§_-r§;
            _loc19_ = mClip.getChildByName("Button_Area3").y - this.§_-rK§;
            this.mButtonMarginX2 = _loc18_ - this.§_-BN§;
            this.mButtonMarginY2 = _loc19_ - this.§_-6§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-h9§)
            {
               this.§_-un§ = 1 + (mClip.getChildByName("Surface").height - this.§_-6§ - this.§_-6§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-un§ = 1 + (mClip.getChildByName("Surface").width - this.§_-BN§ - this.§_-BN§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-Nk§ = §_-Kf§.§_-S8§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-Nk§ = §_-Kf§.§extends§;
            }
         }
         this.§_-fW§();
      }
      
      public function §_-fW§(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:§_-R-§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§_-it§ = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.§_-ek§ = new Array();
         this.§_-cV§();
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
            §_-Oe§[§_-Oe§.length] = new §_-R-§(_loc5_,this,null,_loc4_);
            _loc6_ = §_-Oe§[§_-Oe§.length - 1];
            this.§_-ek§[this.§_-ek§.length] = new §_-Kf§(this.§_-Nk§,_loc3_);
            _loc7_ = this.§_-BN§;
            _loc8_ = this.§_-2n§;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.§_-bS§ == §_-f8§)
            {
               _loc7_ = (this.§_-P1§ - (_loc8_ - 1) * this.§_-V5§) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.§_-Oe§[_loc6_.§_-Oe§.length] = new §_-it§(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.§_-Oe§[_loc6_.§_-Oe§.length] = new §_-it§(_loc10_,_loc6_,new this.§_-wM§() as MovieClip);
               }
               _loc11_ = _loc6_.§_-Oe§[_loc6_.§_-Oe§.length - 1] as §_-it§;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.§_-HB§(_loc12_,this.§_-9G§);
                  if(this.§_-UP§ == §_-3V§)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.§_-9G§ == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.§_-un§ == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.§_-V5§;
                  _loc11_.y = this.§_-6§ + _loc9_ * this.§_-Zz§;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.§_-2n§ * this.§_-un§);
                  _loc15_ = (_loc9_ - _loc14_ * this.§_-2n§ * this.§_-un§) / this.§_-2n§;
                  _loc16_ = (_loc9_ - _loc14_ * this.§_-2n§ * this.§_-un§) % this.§_-2n§;
                  if(this.§_-h9§)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.§_-V5§ + _loc14_ * this.§_-2n§ * this.§_-V5§;
                     _loc11_.y = this.§_-6§ + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.§_-6§ + _loc16_ * this.§_-Zz§ + _loc14_ * this.§_-2n§ * this.§_-Zz§;
                  }
               }
               (this.§_-ek§[this.§_-ek§.length - 1] as §_-Kf§).§_-iD§(_loc11_);
               _loc9_++;
            }
            (this.§_-ek§[this.§_-ek§.length - 1] as §_-Kf§).§_-kB§("");
            _loc6_.§_-4P§(this.§_-2n§,this.§_-r§,this.§_-rK§,this.§_-kC§ * this.§_-V5§,this.§_-kC§ * this.§_-Zz§,this.§_-un§,this.§_-kC§);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-Jb§) : void
      {
         var _loc5_:§_-Kf§ = null;
         var _loc4_:§_-R-§ = getItemByName(this.§_-HS§) as §_-R-§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-wy§(_loc4_.§_-9h§ - 1);
               this.§_-vC§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-wy§(_loc4_.§_-9h§ + 1);
               this.§_-vC§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-Jb§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-Jb§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-ZR§)
         {
            if((_loc5_ = this.§_-kr§((param3 as §_-ZR§).mParentContainer.mName.toUpperCase())) && param3 is §_-it§)
            {
               _loc5_.§_-kB§((param3 as §_-ZR§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-IZ§(param1:String, param2:int) : void
      {
         var _loc3_:§_-R-§ = getItemByName(param1) as §_-R-§;
         if(_loc3_)
         {
            _loc3_.§_-wy§(param2);
            this.§_-vC§();
         }
      }
      
      public function §_-kr§(param1:String) : §_-Kf§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-ek§.length)
         {
            if(param1.toUpperCase() == (this.§_-ek§[_loc2_] as §_-Kf§).mName.toUpperCase())
            {
               return this.§_-ek§[_loc2_] as §_-Kf§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Xk§(param1:String) : void
      {
         this.§_-HS§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-Oe§.length)
         {
            if(§_-Oe§[_loc2_] is §_-R-§)
            {
               if((§_-Oe§[_loc2_] as §_-R-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-Oe§[_loc2_] as §_-R-§).setActiveStatus(true);
               }
               else
               {
                  (§_-Oe§[_loc2_] as §_-R-§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-vC§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-Kf§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-ek§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-vC§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-R-§ = getItemByName(this.§_-HS§) as §_-R-§;
         if(_loc1_)
         {
            if(_loc1_.§_-9h§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-Fy§).setComponentState(§_-ds§.§_-IX§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-Fy§).setComponentState(§_-ds§.§_-Kv§);
            }
            if(_loc1_.§_-9h§ < _loc1_.§_-eG§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-Fy§).setComponentState(§_-ds§.§_-IX§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-Fy§).setComponentState(§_-ds§.§_-Kv§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-Fy§).setComponentState(§_-ds§.§_-Kv§);
            (getItemByName("Button_Scroll2") as §_-Fy§).setComponentState(§_-ds§.§_-Kv§);
         }
      }
      
      public function §_-cV§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-Oe§.length)
         {
            if(§_-Oe§[_loc1_] is §_-R-§)
            {
               (§_-Oe§[_loc1_] as §_-R-§).clear();
               §_-Oe§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-Xk§("");
      }
      
      public function §_-0z§() : void
      {
         var _loc1_:§_-Kf§ = null;
         for each(_loc1_ in this.§_-ek§)
         {
            _loc1_.§_-0z§();
         }
      }
      
      public function §_-R9§() : Array
      {
         if(this.§_-kr§(this.§_-HS§) == null)
         {
            §_-o6§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-kr§(this.§_-HS§).§_-YE§();
      }
      
      public function §in§(param1:Array) : void
      {
         this.§_-kr§(this.§_-HS§).§in§(param1);
      }
      
      public function §_-l-§(param1:Number) : void
      {
         this.§_-kr§(this.§_-HS§).§_-l-§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-wM§ = null;
         this.§_-ek§ = null;
         this.§_-3N§ = null;
      }
   }
}
