package §_-TW§
{
   import §_-QM§.§_-Ns§;
   import §_-ZG§.§_-Ne§;
   import §_-p7§.§_-WY§;
   import §_-xN§.§_-WL§;
   import §_-xN§.§_-fA§;
   import §_-xN§.§_-nT§;
   import §_-xN§.§_-pB§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-CI§ extends §_-qq§
   {
      
      public static const §_-6z§:int = 0;
      
      public static const native:int = 1;
      
      public static const §_-w1§:int = 2;
       
      
      public var §_-Qb§:String;
      
      public var §_-TJ§:Class;
      
      public var §_-EL§:String = null;
      
      public var §_-pD§:Array;
      
      public var §_-ZA§:int;
      
      public var §_-ZX§:Number;
      
      public var §_-uC§:Number;
      
      public var §_-w-§:Number;
      
      public var §_-tP§:Number;
      
      public var §_-iL§:Number;
      
      public var §_-c1§:Number;
      
      public var §_-DV§:Number;
      
      public var §_-im§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-WO§:int;
      
      public var §_-Oj§:Number;
      
      public var §_-df§:String = "";
      
      public var §_-M6§:int;
      
      public var §_-nM§:int;
      
      public var §_-0m§:GlowFilter;
      
      public var §_-Wq§:Boolean = true;
      
      public var §_-ry§:int;
      
      public var §_-Z5§:int;
      
      public function §_-CI§(param1:XML, param2:§_-qq§, param3:§_-Ns§, param4:MovieClip = null)
      {
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:Number = NaN;
         var _loc16_:XML = null;
         var _loc17_:XML = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Qb§ = param1.@button;
         if(this.§_-Qb§.length > 0)
         {
            this.§_-TJ§ = §_-WY§.§_-fs§(this.§_-Qb§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-EL§ = _loc5_;
         }
         this.§_-M6§ = §_-6z§;
         if(param1.@buttonAlign)
         {
            if((_loc13_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-M6§ = native;
            }
         }
         this.§_-nM§ = §_-w1§;
         if(param1.@surfaceAlign)
         {
            if((_loc14_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-nM§ = §_-6z§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc15_ = param1.@GlowFilter;
            this.§_-0m§ = new GlowFilter(_loc15_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc16_ = <Button/>).@name = "Button_Scroll1";
            _loc16_.@MouseUp = "SCROLL_LEFT";
            §_-rp§[§_-rp§.length] = new §_-r6§(_loc16_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll2";
            _loc17_.@MouseUp = "SCROLL_RIGHT";
            §_-rp§[§_-rp§.length] = new §_-r6§(_loc17_,this);
         }
         this.§_-ZX§ = mClip.getChildByName("Surface").x;
         this.§_-uC§ = mClip.getChildByName("Surface").y;
         this.§_-w-§ = mClip.getChildByName("Surface").width;
         this.§_-tP§ = mClip.getChildByName("Surface").height;
         this.§_-iL§ = mClip.getChildByName("Button_Area1").x - this.§_-ZX§;
         this.§_-c1§ = mClip.getChildByName("Button_Area1").y - this.§_-uC§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-ZX§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-uC§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-Oj§ = _loc9_.bottom - this.§_-uC§ - this.§_-c1§;
         this.§_-DV§ = _loc7_ - this.§_-iL§;
         this.§_-im§ = _loc8_ - this.§_-c1§;
         if(Math.abs(this.§_-DV§) < 3)
         {
            this.§_-DV§ = 0;
         }
         if(Math.abs(this.§_-im§) < 3)
         {
            this.§_-im§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-DV§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-iL§ - this.§_-iL§) / this.§_-DV§;
         }
         if(this.§_-im§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-c1§ - this.§_-c1§) / this.§_-im§;
         }
         this.§_-ZA§ = Math.min(_loc10_,_loc11_);
         this.§_-Wq§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-ry§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-ry§ = this.§_-ZA§;
         }
         this.§_-WO§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc18_ = mClip.getChildByName("Button_Area3").x - this.§_-ZX§;
            _loc19_ = mClip.getChildByName("Button_Area3").y - this.§_-uC§;
            this.mButtonMarginX2 = _loc18_ - this.§_-iL§;
            this.mButtonMarginY2 = _loc19_ - this.§_-c1§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-Wq§)
            {
               this.§_-WO§ = 1 + (mClip.getChildByName("Surface").height - this.§_-c1§ - this.§_-c1§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-WO§ = 1 + (mClip.getChildByName("Surface").width - this.§_-iL§ - this.§_-iL§) / this.mButtonMarginX2;
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
                  this.§_-Z5§ = §_-nT§.§_-e4§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-Z5§ = §_-nT§.§_-I2§;
            }
         }
         this.§_-tk§();
      }
      
      public function §_-tk§(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:§_-8S§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§_-bl§ = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.§_-pD§ = new Array();
         this.§_-4§();
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
            §_-rp§[§_-rp§.length] = new §_-8S§(_loc5_,this,null,_loc4_);
            _loc6_ = §_-rp§[§_-rp§.length - 1];
            this.§_-pD§[this.§_-pD§.length] = new §_-nT§(this.§_-Z5§,_loc3_);
            _loc7_ = this.§_-iL§;
            _loc8_ = this.§_-ZA§;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.§_-nM§ == §_-6z§)
            {
               _loc7_ = (this.§_-w-§ - (_loc8_ - 1) * this.§_-DV§) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.§_-rp§[_loc6_.§_-rp§.length] = new §_-bl§(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.§_-rp§[_loc6_.§_-rp§.length] = new §_-bl§(_loc10_,_loc6_,new this.§_-TJ§() as MovieClip);
               }
               _loc11_ = _loc6_.§_-rp§[_loc6_.§_-rp§.length - 1] as §_-bl§;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.§_-Ln§(_loc12_,this.§_-EL§);
                  if(this.§_-M6§ == native)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.§_-EL§ == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.§_-WO§ == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.§_-DV§;
                  _loc11_.y = this.§_-c1§ + _loc9_ * this.§_-im§;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.§_-ZA§ * this.§_-WO§);
                  _loc15_ = (_loc9_ - _loc14_ * this.§_-ZA§ * this.§_-WO§) / this.§_-ZA§;
                  _loc16_ = (_loc9_ - _loc14_ * this.§_-ZA§ * this.§_-WO§) % this.§_-ZA§;
                  if(this.§_-Wq§)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.§_-DV§ + _loc14_ * this.§_-ZA§ * this.§_-DV§;
                     _loc11_.y = this.§_-c1§ + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.§_-c1§ + _loc16_ * this.§_-im§ + _loc14_ * this.§_-ZA§ * this.§_-im§;
                  }
               }
               (this.§_-pD§[this.§_-pD§.length - 1] as §_-nT§).§_-BF§(_loc11_);
               _loc9_++;
            }
            (this.§_-pD§[this.§_-pD§.length - 1] as §_-nT§).§_-XK§("");
            _loc6_.§_-Z0§(this.§_-ZA§,this.§_-ZX§,this.§_-uC§,this.§_-ry§ * this.§_-DV§,this.§_-ry§ * this.§_-im§,this.§_-WO§,this.§_-ry§);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-pB§) : void
      {
         var _loc5_:§_-nT§ = null;
         var _loc4_:§_-8S§ = getItemByName(this.§_-df§) as §_-8S§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-dt§(_loc4_.§_-Bm§ - 1);
               this.§_-sl§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-dt§(_loc4_.§_-Bm§ + 1);
               this.§_-sl§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-pB§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-pB§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-fA§)
         {
            if((_loc5_ = this.§_-52§((param3 as §_-fA§).mParentContainer.mName.toUpperCase())) && param3 is §_-bl§)
            {
               _loc5_.§_-XK§((param3 as §_-fA§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-DB§(param1:String, param2:int) : void
      {
         var _loc3_:§_-8S§ = getItemByName(param1) as §_-8S§;
         if(_loc3_)
         {
            _loc3_.§_-dt§(param2);
            this.§_-sl§();
         }
      }
      
      public function §_-52§(param1:String) : §_-nT§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pD§.length)
         {
            if(param1.toUpperCase() == (this.§_-pD§[_loc2_] as §_-nT§).mName.toUpperCase())
            {
               return this.§_-pD§[_loc2_] as §_-nT§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-gK§(param1:String) : void
      {
         this.§_-df§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-rp§.length)
         {
            if(§_-rp§[_loc2_] is §_-8S§)
            {
               if((§_-rp§[_loc2_] as §_-8S§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-rp§[_loc2_] as §_-8S§).setActiveStatus(true);
               }
               else
               {
                  (§_-rp§[_loc2_] as §_-8S§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-sl§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-nT§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-pD§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-sl§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-8S§ = getItemByName(this.§_-df§) as §_-8S§;
         if(_loc1_)
         {
            if(_loc1_.§_-Bm§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-r6§).setComponentState(§_-WL§.§_-1M§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-r6§).setComponentState(§_-WL§.§_-Jv§);
            }
            if(_loc1_.§_-Bm§ < _loc1_.§_-w8§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-r6§).setComponentState(§_-WL§.§_-1M§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-r6§).setComponentState(§_-WL§.§_-Jv§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-r6§).setComponentState(§_-WL§.§_-Jv§);
            (getItemByName("Button_Scroll2") as §_-r6§).setComponentState(§_-WL§.§_-Jv§);
         }
      }
      
      public function §_-4§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-rp§.length)
         {
            if(§_-rp§[_loc1_] is §_-8S§)
            {
               (§_-rp§[_loc1_] as §_-8S§).clear();
               §_-rp§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-gK§("");
      }
      
      public function §_-Fe§() : void
      {
         var _loc1_:§_-nT§ = null;
         for each(_loc1_ in this.§_-pD§)
         {
            _loc1_.§_-Fe§();
         }
      }
      
      public function §_-2h§() : Array
      {
         if(this.§_-52§(this.§_-df§) == null)
         {
            §_-Ne§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-52§(this.§_-df§).§_-9D§();
      }
      
      public function §for §(param1:Array) : void
      {
         this.§_-52§(this.§_-df§).§for §(param1);
      }
      
      public function §_-Tb§(param1:Number) : void
      {
         this.§_-52§(this.§_-df§).§_-Tb§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-TJ§ = null;
         this.§_-pD§ = null;
         this.§_-0m§ = null;
      }
   }
}
