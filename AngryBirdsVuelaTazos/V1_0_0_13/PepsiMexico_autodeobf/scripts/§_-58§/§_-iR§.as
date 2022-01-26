package §_-58§
{
   import §_-1p§.§_-K9§;
   import §_-Ay§.§_-nw§;
   import §_-J-§.§_-9C§;
   import §_-J-§.§_-BT§;
   import §_-J-§.§_-ZG§;
   import §_-J-§.§_-vh§;
   import §_-ex§.§_-mR§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-iR§ extends §_-WC§
   {
      
      public static const §_-W1§:int = 0;
      
      public static const §_-b9§:int = 1;
      
      public static const §_-ZF§:int = 2;
       
      
      public var §_-Zl§:String;
      
      public var §_-wj§:Class;
      
      public var §_-Vh§:String = null;
      
      public var §_-JI§:Array;
      
      public var §_-kL§:int;
      
      public var §_-8w§:Number;
      
      public var §_-11§:Number;
      
      public var §_-0Z§:Number;
      
      public var §_-6o§:Number;
      
      public var §_-JQ§:Number;
      
      public var §_-Pm§:Number;
      
      public var §_-Nb§:Number;
      
      public var §_-7T§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-12§:int;
      
      public var §_-AS§:Number;
      
      public var §_-Ob§:String = "";
      
      public var §_-t-§:int;
      
      public var §_-Km§:int;
      
      public var § do§:GlowFilter;
      
      public var §_-AG§:Boolean = true;
      
      public var §_-ZC§:int;
      
      public var §_-Re§:int;
      
      public function §_-iR§(param1:XML, param2:§_-WC§, param3:§_-K9§, param4:MovieClip = null)
      {
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:Number = NaN;
         var _loc16_:XML = null;
         var _loc17_:XML = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Zl§ = param1.@button;
         if(this.§_-Zl§.length > 0)
         {
            this.§_-wj§ = §_-nw§.§_-Xm§(this.§_-Zl§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-Vh§ = _loc5_;
         }
         this.§_-t-§ = §_-W1§;
         if(param1.@buttonAlign)
         {
            if((_loc13_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-t-§ = §_-b9§;
            }
         }
         this.§_-Km§ = §_-ZF§;
         if(param1.@surfaceAlign)
         {
            if((_loc14_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-Km§ = §_-W1§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc15_ = param1.@GlowFilter;
            this.§ do§ = new GlowFilter(_loc15_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc16_ = <Button/>).@name = "Button_Scroll1";
            _loc16_.@MouseUp = "SCROLL_LEFT";
            §_-7u§[§_-7u§.length] = new §_-8c§(_loc16_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll2";
            _loc17_.@MouseUp = "SCROLL_RIGHT";
            §_-7u§[§_-7u§.length] = new §_-8c§(_loc17_,this);
         }
         this.§_-8w§ = mClip.getChildByName("Surface").x;
         this.§_-11§ = mClip.getChildByName("Surface").y;
         this.§_-0Z§ = mClip.getChildByName("Surface").width;
         this.§_-6o§ = mClip.getChildByName("Surface").height;
         this.§_-JQ§ = mClip.getChildByName("Button_Area1").x - this.§_-8w§;
         this.§_-Pm§ = mClip.getChildByName("Button_Area1").y - this.§_-11§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-8w§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-11§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-AS§ = _loc9_.bottom - this.§_-11§ - this.§_-Pm§;
         this.§_-Nb§ = _loc7_ - this.§_-JQ§;
         this.§_-7T§ = _loc8_ - this.§_-Pm§;
         if(Math.abs(this.§_-Nb§) < 3)
         {
            this.§_-Nb§ = 0;
         }
         if(Math.abs(this.§_-7T§) < 3)
         {
            this.§_-7T§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-Nb§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-JQ§ - this.§_-JQ§) / this.§_-Nb§;
         }
         if(this.§_-7T§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-Pm§ - this.§_-Pm§) / this.§_-7T§;
         }
         this.§_-kL§ = Math.min(_loc10_,_loc11_);
         this.§_-AG§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-ZC§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-ZC§ = this.§_-kL§;
         }
         this.§_-12§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc18_ = mClip.getChildByName("Button_Area3").x - this.§_-8w§;
            _loc19_ = mClip.getChildByName("Button_Area3").y - this.§_-11§;
            this.mButtonMarginX2 = _loc18_ - this.§_-JQ§;
            this.mButtonMarginY2 = _loc19_ - this.§_-Pm§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-AG§)
            {
               this.§_-12§ = 1 + (mClip.getChildByName("Surface").height - this.§_-Pm§ - this.§_-Pm§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-12§ = 1 + (mClip.getChildByName("Surface").width - this.§_-JQ§ - this.§_-JQ§) / this.mButtonMarginX2;
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
                  this.§_-Re§ = §_-vh§.§_-bk§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-Re§ = §_-vh§.§_-m§;
            }
         }
         this.§_-Xb§();
      }
      
      public function §_-Xb§(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:§_-Tc§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§_-Xc§ = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.§_-JI§ = new Array();
         this.§_-nZ§();
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
            §_-7u§[§_-7u§.length] = new §_-Tc§(_loc5_,this,null,_loc4_);
            _loc6_ = §_-7u§[§_-7u§.length - 1];
            this.§_-JI§[this.§_-JI§.length] = new §_-vh§(this.§_-Re§,_loc3_);
            _loc7_ = this.§_-JQ§;
            _loc8_ = this.§_-kL§;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.§_-Km§ == §_-W1§)
            {
               _loc7_ = (this.§_-0Z§ - (_loc8_ - 1) * this.§_-Nb§) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.§_-7u§[_loc6_.§_-7u§.length] = new §_-Xc§(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.§_-7u§[_loc6_.§_-7u§.length] = new §_-Xc§(_loc10_,_loc6_,new this.§_-wj§() as MovieClip);
               }
               _loc11_ = _loc6_.§_-7u§[_loc6_.§_-7u§.length - 1] as §_-Xc§;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.§_-r§(_loc12_,this.§_-Vh§);
                  if(this.§_-t-§ == §_-b9§)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.§_-Vh§ == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.§_-12§ == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.§_-Nb§;
                  _loc11_.y = this.§_-Pm§ + _loc9_ * this.§_-7T§;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.§_-kL§ * this.§_-12§);
                  _loc15_ = (_loc9_ - _loc14_ * this.§_-kL§ * this.§_-12§) / this.§_-kL§;
                  _loc16_ = (_loc9_ - _loc14_ * this.§_-kL§ * this.§_-12§) % this.§_-kL§;
                  if(this.§_-AG§)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.§_-Nb§ + _loc14_ * this.§_-kL§ * this.§_-Nb§;
                     _loc11_.y = this.§_-Pm§ + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.§_-Pm§ + _loc16_ * this.§_-7T§ + _loc14_ * this.§_-kL§ * this.§_-7T§;
                  }
               }
               (this.§_-JI§[this.§_-JI§.length - 1] as §_-vh§).§_-LI§(_loc11_);
               _loc9_++;
            }
            (this.§_-JI§[this.§_-JI§.length - 1] as §_-vh§).§_-lI§("");
            _loc6_.§_-mg§(this.§_-kL§,this.§_-8w§,this.§_-11§,this.§_-ZC§ * this.§_-Nb§,this.§_-ZC§ * this.§_-7T§,this.§_-12§,this.§_-ZC§);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-ZG§) : void
      {
         var _loc5_:§_-vh§ = null;
         var _loc4_:§_-Tc§ = getItemByName(this.§_-Ob§) as §_-Tc§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-yJ§(_loc4_.§_-z8§ - 1);
               this.§_-m3§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-yJ§(_loc4_.§_-z8§ + 1);
               this.§_-m3§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-ZG§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-ZG§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-9C§)
         {
            if((_loc5_ = this.§_-mp§((param3 as §_-9C§).mParentContainer.mName.toUpperCase())) && param3 is §_-Xc§)
            {
               _loc5_.§_-lI§((param3 as §_-9C§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-TZ§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Tc§ = getItemByName(param1) as §_-Tc§;
         if(_loc3_)
         {
            _loc3_.§_-yJ§(param2);
            this.§_-m3§();
         }
      }
      
      public function §_-mp§(param1:String) : §_-vh§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-JI§.length)
         {
            if(param1.toUpperCase() == (this.§_-JI§[_loc2_] as §_-vh§).mName.toUpperCase())
            {
               return this.§_-JI§[_loc2_] as §_-vh§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Cp§(param1:String) : void
      {
         this.§_-Ob§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-7u§.length)
         {
            if(§_-7u§[_loc2_] is §_-Tc§)
            {
               if((§_-7u§[_loc2_] as §_-Tc§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-7u§[_loc2_] as §_-Tc§).setActiveStatus(true);
               }
               else
               {
                  (§_-7u§[_loc2_] as §_-Tc§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-m3§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-vh§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-JI§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-m3§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-Tc§ = getItemByName(this.§_-Ob§) as §_-Tc§;
         if(_loc1_)
         {
            if(_loc1_.§_-z8§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-8c§).setComponentState(§_-BT§.§_-Gc§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-8c§).setComponentState(§_-BT§.§_-aM§);
            }
            if(_loc1_.§_-z8§ < _loc1_.§_-LO§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-8c§).setComponentState(§_-BT§.§_-Gc§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-8c§).setComponentState(§_-BT§.§_-aM§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-8c§).setComponentState(§_-BT§.§_-aM§);
            (getItemByName("Button_Scroll2") as §_-8c§).setComponentState(§_-BT§.§_-aM§);
         }
      }
      
      public function §_-nZ§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-7u§.length)
         {
            if(§_-7u§[_loc1_] is §_-Tc§)
            {
               (§_-7u§[_loc1_] as §_-Tc§).clear();
               §_-7u§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-Cp§("");
      }
      
      public function §_-TR§() : void
      {
         var _loc1_:§_-vh§ = null;
         for each(_loc1_ in this.§_-JI§)
         {
            _loc1_.§_-TR§();
         }
      }
      
      public function §_-bl§() : Array
      {
         if(this.§_-mp§(this.§_-Ob§) == null)
         {
            §_-mR§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-mp§(this.§_-Ob§).§_-H9§();
      }
      
      public function §_-Il§(param1:Array) : void
      {
         this.§_-mp§(this.§_-Ob§).§_-Il§(param1);
      }
      
      public function §_-A9§(param1:Number) : void
      {
         this.§_-mp§(this.§_-Ob§).§_-A9§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-wj§ = null;
         this.§_-JI§ = null;
         this.§ do§ = null;
      }
   }
}
