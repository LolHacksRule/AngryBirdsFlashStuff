package §_-F1§
{
   import §_-0S§.§_-z1§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Ov§;
   import §_-6r§.§_-Tk§;
   import §_-6r§.§_-h3§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-mr§ extends §_-k4§
   {
      
      public static const §_-p0§:int = 0;
      
      public static const §_-SL§:int = 1;
      
      public static const §_-ai§:int = 2;
       
      
      public var §_-Wt§:String;
      
      public var §_-SD§:Class;
      
      public var §_-I9§:String = null;
      
      public var §_-bA§:Array;
      
      public var §_-cA§:int;
      
      public var §_-xx§:Number;
      
      public var §_-7y§:Number;
      
      public var §_-dD§:Number;
      
      public var §_-Mj§:Number;
      
      public var §_-yV§:Number;
      
      public var §_-9G§:Number;
      
      public var §_-8o§:Number;
      
      public var §_-zN§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-fD§:int;
      
      public var §_-QO§:Number;
      
      public var §_-RU§:String = "";
      
      public var §_-8Z§:int;
      
      public var §_-y§:int;
      
      public var §_-U9§:GlowFilter;
      
      public var §_-Ge§:Boolean = true;
      
      public var §_-dc§:int;
      
      public var §_-YT§:int;
      
      public var §_-Fg§:Number = 0;
      
      public var §_-oR§:Number = 0;
      
      public var §_-To§:Number = 0;
      
      public var §_-U5§:Number = 0;
      
      public var §_-I§:Boolean = false;
      
      public var §_-VN§:Boolean = false;
      
      public var §_-x4§:MovieClip = null;
      
      public function §_-mr§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Wt§ = param1.@button;
         if(this.§_-Wt§.length > 0)
         {
            this.§_-SD§ = §_-z1§.§_-tn§(this.§_-Wt§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-I9§ = _loc5_;
         }
         this.§_-8Z§ = §_-p0§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-8Z§ = §_-SL§;
            }
         }
         this.§_-y§ = §_-ai§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-y§ = §_-p0§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§_-U9§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-yZ§[§_-yZ§.length] = new §_-qp§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-yZ§[§_-yZ§.length] = new §_-qp§(_loc18_,this);
         }
         this.§_-xx§ = mClip.getChildByName("Surface").x;
         this.§_-7y§ = mClip.getChildByName("Surface").y;
         this.§_-dD§ = mClip.getChildByName("Surface").width;
         this.§_-Mj§ = mClip.getChildByName("Surface").height;
         this.§_-yV§ = mClip.getChildByName("Button_Area1").x - this.§_-xx§;
         this.§_-9G§ = mClip.getChildByName("Button_Area1").y - this.§_-7y§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-xx§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-7y§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-QO§ = _loc9_.bottom - this.§_-7y§ - this.§_-9G§;
         this.§_-8o§ = _loc7_ - this.§_-yV§;
         this.§_-zN§ = _loc8_ - this.§_-9G§;
         if(Math.abs(this.§_-8o§) < 3)
         {
            this.§_-8o§ = 0;
         }
         if(Math.abs(this.§_-zN§) < 3)
         {
            this.§_-zN§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-8o§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-yV§ - this.§_-yV§) / this.§_-8o§;
         }
         if(this.§_-zN§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-9G§ - this.§_-9G§) / this.§_-zN§;
         }
         this.§_-cA§ = Math.min(_loc10_,_loc11_);
         this.§_-Ge§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-dc§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-dc§ = this.§_-cA§;
         }
         this.§_-fD§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§_-xx§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§_-7y§;
            this.mButtonMarginX2 = _loc19_ - this.§_-yV§;
            this.mButtonMarginY2 = _loc20_ - this.§_-9G§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-Ge§)
            {
               this.§_-fD§ = 1 + (mClip.getChildByName("Surface").height - this.§_-9G§ - this.§_-9G§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-fD§ = 1 + (mClip.getChildByName("Surface").width - this.§_-yV§ - this.§_-yV§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-x4§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-To§ = this.§_-x4§.x - mClip.getChildByName("Surface").x;
            this.§_-U5§ = this.§_-x4§.y - mClip.getChildByName("Surface").y;
            this.§_-Fg§ = this.§_-x4§.x + this.§_-x4§.width - (this.§_-x4§.x + mClip.getChildByName("Surface").width);
            this.§_-oR§ = this.§_-x4§.y + this.§_-x4§.height - (this.§_-x4§.y + mClip.getChildByName("Surface").height);
            this.§_-I§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-VN§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-YT§ = §_-Ov§.§_-e4§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-YT§ = §_-Ov§.§_-GF§;
            }
         }
         this.§_-7§();
      }
      
      public function §_-7§(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:§_-Os§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§_-nq§ = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.§_-bA§ = new Array();
         this.§_-9O§();
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
            §_-yZ§[§_-yZ§.length] = new §_-Os§(_loc5_,this,null,_loc4_);
            _loc6_ = §_-yZ§[§_-yZ§.length - 1];
            this.§_-bA§[this.§_-bA§.length] = new §_-Ov§(this.§_-YT§,_loc3_);
            _loc7_ = this.§_-yV§;
            _loc8_ = this.§_-cA§;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.§_-y§ == §_-p0§)
            {
               _loc7_ = (this.§_-dD§ - (_loc8_ - 1) * this.§_-8o§) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.§_-yZ§[_loc6_.§_-yZ§.length] = new §_-nq§(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.§_-yZ§[_loc6_.§_-yZ§.length] = new §_-nq§(_loc10_,_loc6_,new this.§_-SD§() as MovieClip);
               }
               _loc11_ = _loc6_.§_-yZ§[_loc6_.§_-yZ§.length - 1] as §_-nq§;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.§_-7C§(_loc12_,this.§_-I9§);
                  if(this.§_-8Z§ == §_-SL§)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.§_-I9§ == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.§_-fD§ == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.§_-8o§;
                  _loc11_.y = this.§_-9G§ + _loc9_ * this.§_-zN§;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.§_-cA§ * this.§_-fD§);
                  _loc15_ = (_loc9_ - _loc14_ * this.§_-cA§ * this.§_-fD§) / this.§_-cA§;
                  _loc16_ = (_loc9_ - _loc14_ * this.§_-cA§ * this.§_-fD§) % this.§_-cA§;
                  if(this.§_-Ge§)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.§_-8o§ + _loc14_ * this.§_-cA§ * this.§_-8o§;
                     _loc11_.y = this.§_-9G§ + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.§_-9G§ + _loc16_ * this.§_-zN§ + _loc14_ * this.§_-cA§ * this.§_-zN§;
                  }
               }
               (this.§_-bA§[this.§_-bA§.length - 1] as §_-Ov§).§_-um§(_loc11_);
               _loc9_++;
            }
            (this.§_-bA§[this.§_-bA§.length - 1] as §_-Ov§).§_-0r§("");
            _loc6_.§_-xe§(this.§_-cA§,this.§_-xx§,this.§_-7y§,this.§_-dc§ * this.§_-8o§,this.§_-dc§ * this.§_-zN§,this.§_-fD§,this.§_-dc§);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-Ze§() : int
      {
         return this.§_-cA§;
      }
      
      public function get §_-3W§() : int
      {
         if(this.§_-Ze§ == 0)
         {
            return 0;
         }
         return this.§_-Id§(this.§_-RU§).§_-E2§.length / this.§_-Ze§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:§_-Ov§ = null;
         var _loc4_:§_-Os§ = getItemByName(this.§_-RU§) as §_-Os§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-t6§(_loc4_.§_-uw§ - 1);
               this.§_-d0§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-t6§(_loc4_.§_-uw§ + 1);
               this.§_-d0§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-7P§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-7P§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-Tk§)
         {
            if((_loc5_ = this.§_-Id§((param3 as §_-Tk§).mParentContainer.mName.toUpperCase())) && param3 is §_-nq§)
            {
               _loc5_.§_-0r§((param3 as §_-Tk§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-fI§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Os§ = getItemByName(param1) as §_-Os§;
         if(_loc3_)
         {
            _loc3_.§_-t6§(param2);
            this.§_-d0§();
         }
      }
      
      public function §_-Id§(param1:String) : §_-Ov§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-bA§.length)
         {
            if(param1.toUpperCase() == (this.§_-bA§[_loc2_] as §_-Ov§).mName.toUpperCase())
            {
               return this.§_-bA§[_loc2_] as §_-Ov§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Re§(param1:String) : void
      {
         this.§_-RU§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-yZ§.length)
         {
            if(§_-yZ§[_loc2_] is §_-Os§)
            {
               if((§_-yZ§[_loc2_] as §_-Os§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-yZ§[_loc2_] as §_-Os§).setActiveStatus(true);
                  if(this.§_-I§)
                  {
                     this.§_-x4§.x = (§_-yZ§[_loc2_] as §_-Os§).x + this.§_-To§;
                     this.§_-x4§.width = (§_-yZ§[_loc2_] as §_-Os§).width + this.§_-Fg§;
                  }
                  if(this.§_-VN§)
                  {
                     this.§_-x4§.y = (§_-yZ§[_loc2_] as §_-Os§).y + this.§_-U5§;
                     this.§_-x4§.height = (§_-yZ§[_loc2_] as §_-Os§).height + this.§_-oR§;
                  }
               }
               else
               {
                  (§_-yZ§[_loc2_] as §_-Os§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-d0§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-Ov§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-bA§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-d0§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-Os§ = getItemByName(this.§_-RU§) as §_-Os§;
         if(_loc1_)
         {
            if(_loc1_.§_-uw§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-qp§).setComponentState(§_-h3§.§_-1M§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-qp§).setComponentState(§_-h3§.§_-By§);
            }
            if(_loc1_.§_-uw§ < _loc1_.§_-ZJ§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-qp§).setComponentState(§_-h3§.§_-1M§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-qp§).setComponentState(§_-h3§.§_-By§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-qp§).setComponentState(§_-h3§.§_-By§);
            (getItemByName("Button_Scroll2") as §_-qp§).setComponentState(§_-h3§.§_-By§);
         }
      }
      
      public function §_-9O§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-yZ§.length)
         {
            if(§_-yZ§[_loc1_] is §_-Os§)
            {
               (§_-yZ§[_loc1_] as §_-Os§).clear();
               §_-yZ§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-Re§("");
      }
      
      public function §_-ql§() : void
      {
         var _loc1_:§_-Ov§ = null;
         for each(_loc1_ in this.§_-bA§)
         {
            _loc1_.§_-ql§();
         }
      }
      
      public function §_-J9§() : Array
      {
         if(this.§_-Id§(this.§_-RU§) == null)
         {
            §_-54§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-Id§(this.§_-RU§).§_-ni§();
      }
      
      public function §_-9l§(param1:Array) : void
      {
         this.§_-Id§(this.§_-RU§).§_-9l§(param1);
      }
      
      public function §_-bQ§(param1:Number) : void
      {
         this.§_-Id§(this.§_-RU§).§_-bQ§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-SD§ = null;
         this.§_-bA§ = null;
         this.§_-U9§ = null;
      }
   }
}
