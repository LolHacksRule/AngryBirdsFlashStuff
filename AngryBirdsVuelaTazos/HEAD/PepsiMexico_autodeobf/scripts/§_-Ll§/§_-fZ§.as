package §_-Ll§
{
   import §_-7V§.§_-C§;
   import §_-7V§.§_-Gs§;
   import §_-7V§.§_-LB§;
   import §_-7V§.§_-rM§;
   import §_-9k§.§_-X7§;
   import §_-Qn§.§_-bo§;
   import §_-gM§.§_-yj§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-fZ§ extends §_-4G§
   {
      
      public static const §_-QL§:int = 0;
      
      public static const §_-Tw§:int = 1;
      
      public static const §_-kD§:int = 2;
       
      
      public var §_-OL§:String;
      
      public var §_-1y§:Class;
      
      public var §_-i3§:String = null;
      
      public var §_-Gv§:Array;
      
      public var §_-Dc§:int;
      
      public var §_-M8§:Number;
      
      public var §_-BY§:Number;
      
      public var §_-Jo§:Number;
      
      public var §_-8d§:Number;
      
      public var §_-Ur§:Number;
      
      public var §_-fV§:Number;
      
      public var §_-MQ§:Number;
      
      public var §_-KF§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-Xb§:int;
      
      public var §_-In§:Number;
      
      public var §_-R8§:String = "";
      
      public var §_-RA§:int;
      
      public var §_-Xr§:int;
      
      public var §_-sn§:GlowFilter;
      
      public var §_-v9§:Boolean = true;
      
      public var §_-UE§:int;
      
      public var §super§:int;
      
      public var §_-z9§:Number = 0;
      
      public var §_-XB§:Number = 0;
      
      public var §_-jq§:Number = 0;
      
      public var §_-99§:Number = 0;
      
      public var §_-2Q§:Boolean = false;
      
      public var §_-E2§:Boolean = false;
      
      public var §_-2A§:MovieClip = null;
      
      public function §_-fZ§(param1:XML, param2:§_-4G§, param3:§_-bo§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-OL§ = param1.@button;
         if(this.§_-OL§.length > 0)
         {
            this.§_-1y§ = §_-X7§.§_-IA§(this.§_-OL§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-i3§ = _loc5_;
         }
         this.§_-RA§ = §_-QL§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-RA§ = §_-Tw§;
            }
         }
         this.§_-Xr§ = §_-kD§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-Xr§ = §_-QL§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§_-sn§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-dD§[§_-dD§.length] = new §_-FU§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-dD§[§_-dD§.length] = new §_-FU§(_loc18_,this);
         }
         this.§_-M8§ = mClip.getChildByName("Surface").x;
         this.§_-BY§ = mClip.getChildByName("Surface").y;
         this.§_-Jo§ = mClip.getChildByName("Surface").width;
         this.§_-8d§ = mClip.getChildByName("Surface").height;
         this.§_-Ur§ = mClip.getChildByName("Button_Area1").x - this.§_-M8§;
         this.§_-fV§ = mClip.getChildByName("Button_Area1").y - this.§_-BY§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-M8§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-BY§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-In§ = _loc9_.bottom - this.§_-BY§ - this.§_-fV§;
         this.§_-MQ§ = _loc7_ - this.§_-Ur§;
         this.§_-KF§ = _loc8_ - this.§_-fV§;
         if(Math.abs(this.§_-MQ§) < 3)
         {
            this.§_-MQ§ = 0;
         }
         if(Math.abs(this.§_-KF§) < 3)
         {
            this.§_-KF§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-MQ§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-Ur§ - this.§_-Ur§) / this.§_-MQ§;
         }
         if(this.§_-KF§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-fV§ - this.§_-fV§) / this.§_-KF§;
         }
         this.§_-Dc§ = Math.min(_loc10_,_loc11_);
         this.§_-v9§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-UE§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-UE§ = this.§_-Dc§;
         }
         this.§_-Xb§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§_-M8§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§_-BY§;
            this.mButtonMarginX2 = _loc19_ - this.§_-Ur§;
            this.mButtonMarginY2 = _loc20_ - this.§_-fV§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-v9§)
            {
               this.§_-Xb§ = 1 + (mClip.getChildByName("Surface").height - this.§_-fV§ - this.§_-fV§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-Xb§ = 1 + (mClip.getChildByName("Surface").width - this.§_-Ur§ - this.§_-Ur§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-2A§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-jq§ = this.§_-2A§.x - mClip.getChildByName("Surface").x;
            this.§_-99§ = this.§_-2A§.y - mClip.getChildByName("Surface").y;
            this.§_-z9§ = this.§_-2A§.x + this.§_-2A§.width - (this.§_-2A§.x + mClip.getChildByName("Surface").width);
            this.§_-XB§ = this.§_-2A§.y + this.§_-2A§.height - (this.§_-2A§.y + mClip.getChildByName("Surface").height);
            this.§_-2Q§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-E2§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§super§ = §_-rM§.§_-fc§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§super§ = §_-rM§.§_-qV§;
            }
         }
         this.§_-OE§();
      }
      
      public function §_-OE§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§_-wR§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§_-Nt§ = null;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(param2 == null)
         {
            param2 = §_-Nt§;
         }
         this.§_-Gv§ = new Array();
         this.§_-o3§();
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
            §_-dD§[§_-dD§.length] = new §_-wR§(_loc6_,this,null,_loc5_);
            _loc7_ = §_-dD§[§_-dD§.length - 1];
            this.§_-Gv§[this.§_-Gv§.length] = new §_-rM§(this.§super§,_loc4_);
            _loc8_ = this.§_-Ur§;
            _loc9_ = this.§_-Dc§;
            if((param1[_loc3_] as Array).length < _loc9_)
            {
               _loc9_ = (param1[_loc3_] as Array).length;
            }
            if(this.§_-Xr§ == §_-QL§)
            {
               _loc8_ = (this.§_-Jo§ - (_loc9_ - 1) * this.§_-MQ§) / 2;
            }
            _loc10_ = 0;
            while(_loc10_ < (param1[_loc3_] as Array).length)
            {
               _loc11_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[2])
               {
                  _loc7_.§_-dD§[_loc7_.§_-dD§.length] = new param2(_loc11_,_loc7_,((param1[_loc3_] as Array)[_loc10_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc7_.§_-dD§[_loc7_.§_-dD§.length] = new param2(_loc11_,_loc7_,new this.§_-1y§() as MovieClip);
               }
               _loc12_ = _loc7_.§_-dD§[_loc7_.§_-dD§.length - 1];
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[1] != null)
               {
                  _loc13_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[1] as MovieClip;
                  _loc12_.§_-jj§(_loc13_,this.§_-i3§);
                  if(this.§_-RA§ == §_-Tw§)
                  {
                     _loc14_ = 2;
                     _loc13_.y -= _loc13_.height / 2;
                     if(this.§_-i3§ == null)
                     {
                        _loc13_.y -= _loc14_;
                     }
                  }
               }
               if(this.§_-Xb§ == 1)
               {
                  _loc12_.x = _loc8_ + _loc10_ * this.§_-MQ§;
                  _loc12_.y = this.§_-fV§ + _loc10_ * this.§_-KF§;
               }
               else
               {
                  _loc15_ = _loc10_ / (this.§_-Dc§ * this.§_-Xb§);
                  _loc16_ = (_loc10_ - _loc15_ * this.§_-Dc§ * this.§_-Xb§) / this.§_-Dc§;
                  _loc17_ = (_loc10_ - _loc15_ * this.§_-Dc§ * this.§_-Xb§) % this.§_-Dc§;
                  if(this.§_-v9§)
                  {
                     _loc12_.x = _loc8_ + _loc17_ * this.§_-MQ§ + _loc15_ * this.§_-Dc§ * this.§_-MQ§;
                     _loc12_.y = this.§_-fV§ + _loc16_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc12_.x = _loc8_ + _loc16_ * this.mButtonMarginX2;
                     _loc12_.y = this.§_-fV§ + _loc17_ * this.§_-KF§ + _loc15_ * this.§_-Dc§ * this.§_-KF§;
                  }
               }
               (this.§_-Gv§[this.§_-Gv§.length - 1] as §_-rM§).§_-zi§(_loc12_);
               _loc10_++;
            }
            (this.§_-Gv§[this.§_-Gv§.length - 1] as §_-rM§).§_-kG§("");
            _loc7_.§_-f9§(this.§_-Dc§,this.§_-M8§,this.§_-BY§,this.§_-UE§ * this.§_-MQ§,this.§_-UE§ * this.§_-KF§,this.§_-Xb§,this.§_-UE§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-SI§() : int
      {
         return this.§_-Dc§;
      }
      
      public function get §_-91§() : int
      {
         if(this.§_-SI§ == 0)
         {
            return 0;
         }
         return this.§_-Br§(this.§_-R8§).§_-Kf§.length / this.§_-SI§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-Gs§) : void
      {
         var _loc5_:§_-rM§ = null;
         var _loc4_:§_-wR§ = getItemByName(this.§_-R8§) as §_-wR§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-xv§(_loc4_.§_-Px§ - 1);
               this.§_-8z§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-xv§(_loc4_.§_-Px§ + 1);
               this.§_-8z§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-Gs§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-Gs§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-C§)
         {
            if((_loc5_ = this.§_-Br§((param3 as §_-C§).mParentContainer.mName.toUpperCase())) && param3 is §_-Nt§)
            {
               _loc5_.§_-kG§((param3 as §_-C§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-WJ§(param1:String, param2:int) : void
      {
         var _loc3_:§_-wR§ = getItemByName(param1) as §_-wR§;
         if(_loc3_)
         {
            _loc3_.§_-xv§(param2);
            this.§_-8z§();
         }
      }
      
      public function §_-Br§(param1:String) : §_-rM§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Gv§.length)
         {
            if(param1.toUpperCase() == (this.§_-Gv§[_loc2_] as §_-rM§).mName.toUpperCase())
            {
               return this.§_-Gv§[_loc2_] as §_-rM§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Jk§(param1:String) : void
      {
         this.§_-R8§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-dD§.length)
         {
            if(§_-dD§[_loc2_] is §_-wR§)
            {
               if((§_-dD§[_loc2_] as §_-wR§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-dD§[_loc2_] as §_-wR§).setActiveStatus(true);
                  if(this.§_-2Q§)
                  {
                     this.§_-2A§.x = (§_-dD§[_loc2_] as §_-wR§).x + this.§_-jq§;
                     this.§_-2A§.width = (§_-dD§[_loc2_] as §_-wR§).width + this.§_-z9§;
                  }
                  if(this.§_-E2§)
                  {
                     this.§_-2A§.y = (§_-dD§[_loc2_] as §_-wR§).y + this.§_-99§;
                     this.§_-2A§.height = (§_-dD§[_loc2_] as §_-wR§).height + this.§_-XB§;
                  }
               }
               else
               {
                  (§_-dD§[_loc2_] as §_-wR§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-8z§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-rM§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-Gv§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-8z§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-wR§ = getItemByName(this.§_-R8§) as §_-wR§;
         if(_loc1_)
         {
            if(_loc1_.§_-Px§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-FU§).setComponentState(§_-LB§.§_-z6§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-FU§).setComponentState(§_-LB§.§_-BL§);
            }
            if(_loc1_.§_-Px§ < _loc1_.§_-nc§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-FU§).setComponentState(§_-LB§.§_-z6§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-FU§).setComponentState(§_-LB§.§_-BL§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-FU§).setComponentState(§_-LB§.§_-BL§);
            (getItemByName("Button_Scroll2") as §_-FU§).setComponentState(§_-LB§.§_-BL§);
         }
      }
      
      public function §_-o3§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-dD§.length)
         {
            if(§_-dD§[_loc1_] is §_-wR§)
            {
               (§_-dD§[_loc1_] as §_-wR§).clear();
               §_-dD§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-Jk§("");
      }
      
      public function §_-zE§() : void
      {
         var _loc1_:§_-rM§ = null;
         for each(_loc1_ in this.§_-Gv§)
         {
            _loc1_.§_-zE§();
         }
      }
      
      public function §_-w5§() : Array
      {
         if(this.§_-Br§(this.§_-R8§) == null)
         {
            §_-yj§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-Br§(this.§_-R8§).§_-Tb§();
      }
      
      public function §_-bi§(param1:Array) : void
      {
         this.§_-Br§(this.§_-R8§).§_-bi§(param1);
      }
      
      public function §_-vG§(param1:Number) : void
      {
         this.§_-Br§(this.§_-R8§).§_-vG§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-1y§ = null;
         this.§_-Gv§ = null;
         this.§_-sn§ = null;
      }
   }
}
