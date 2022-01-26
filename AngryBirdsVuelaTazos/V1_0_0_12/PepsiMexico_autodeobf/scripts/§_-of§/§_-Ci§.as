package §_-of§
{
   import §_-8J§.§_-8s§;
   import §_-RG§.§_-HT§;
   import §_-Ys§.§_-7o§;
   import §_-Ys§.§_-TM§;
   import §_-Ys§.§_-o-§;
   import §_-Ys§.§_-so§;
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-Ci§ extends §_-H4§
   {
      
      public static const §_-GG§:int = 0;
      
      public static const §_-Ud§:int = 1;
      
      public static const §_-vn§:int = 2;
       
      
      public var §_-Cp§:String;
      
      public var §_-Ss§:Class;
      
      public var §_-RC§:String = null;
      
      public var §_-kp§:Array;
      
      public var §_-4V§:int;
      
      public var §_-Mh§:Number;
      
      public var §_-IY§:Number;
      
      public var §_-5Y§:Number;
      
      public var §_-gZ§:Number;
      
      public var §_-wp§:Number;
      
      public var §_-Nq§:Number;
      
      public var §_-1G§:Number;
      
      public var §_-mJ§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-1p§:int;
      
      public var §_-E-§:Number;
      
      public var §_-a0§:String = "";
      
      public var §_-lY§:int;
      
      public var §_-Xm§:int;
      
      public var §_-Jm§:GlowFilter;
      
      public var §_-di§:Boolean = true;
      
      public var §_-me§:int;
      
      public var §_-4s§:int;
      
      public function §_-Ci§(param1:XML, param2:§_-H4§, param3:§_-8s§, param4:MovieClip = null)
      {
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:Number = NaN;
         var _loc16_:XML = null;
         var _loc17_:XML = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Cp§ = param1.@button;
         if(this.§_-Cp§.length > 0)
         {
            this.§_-Ss§ = §_-XO§.§_-O3§(this.§_-Cp§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-RC§ = _loc5_;
         }
         this.§_-lY§ = §_-GG§;
         if(param1.@buttonAlign)
         {
            if((_loc13_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-lY§ = §_-Ud§;
            }
         }
         this.§_-Xm§ = §_-vn§;
         if(param1.@surfaceAlign)
         {
            if((_loc14_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-Xm§ = §_-GG§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc15_ = param1.@GlowFilter;
            this.§_-Jm§ = new GlowFilter(_loc15_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc16_ = <Button/>).@name = "Button_Scroll1";
            _loc16_.@MouseUp = "SCROLL_LEFT";
            §_-X5§[§_-X5§.length] = new §_-Yk§(_loc16_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll2";
            _loc17_.@MouseUp = "SCROLL_RIGHT";
            §_-X5§[§_-X5§.length] = new §_-Yk§(_loc17_,this);
         }
         this.§_-Mh§ = mClip.getChildByName("Surface").x;
         this.§_-IY§ = mClip.getChildByName("Surface").y;
         this.§_-5Y§ = mClip.getChildByName("Surface").width;
         this.§_-gZ§ = mClip.getChildByName("Surface").height;
         this.§_-wp§ = mClip.getChildByName("Button_Area1").x - this.§_-Mh§;
         this.§_-Nq§ = mClip.getChildByName("Button_Area1").y - this.§_-IY§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-Mh§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-IY§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-E-§ = _loc9_.bottom - this.§_-IY§ - this.§_-Nq§;
         this.§_-1G§ = _loc7_ - this.§_-wp§;
         this.§_-mJ§ = _loc8_ - this.§_-Nq§;
         if(Math.abs(this.§_-1G§) < 3)
         {
            this.§_-1G§ = 0;
         }
         if(Math.abs(this.§_-mJ§) < 3)
         {
            this.§_-mJ§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-1G§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-wp§ - this.§_-wp§) / this.§_-1G§;
         }
         if(this.§_-mJ§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-Nq§ - this.§_-Nq§) / this.§_-mJ§;
         }
         this.§_-4V§ = Math.min(_loc10_,_loc11_);
         this.§_-di§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-me§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-me§ = this.§_-4V§;
         }
         this.§_-1p§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc18_ = mClip.getChildByName("Button_Area3").x - this.§_-Mh§;
            _loc19_ = mClip.getChildByName("Button_Area3").y - this.§_-IY§;
            this.mButtonMarginX2 = _loc18_ - this.§_-wp§;
            this.mButtonMarginY2 = _loc19_ - this.§_-Nq§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-di§)
            {
               this.§_-1p§ = 1 + (mClip.getChildByName("Surface").height - this.§_-Nq§ - this.§_-Nq§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-1p§ = 1 + (mClip.getChildByName("Surface").width - this.§_-wp§ - this.§_-wp§) / this.mButtonMarginX2;
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
                  this.§_-4s§ = §_-so§.§_-O5§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-4s§ = §_-so§.§_-e§;
            }
         }
         this.§_-lF§();
      }
      
      public function §_-lF§(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:§_-UV§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§_-Fo§ = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.§_-kp§ = new Array();
         this.§_-1d§();
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
            §_-X5§[§_-X5§.length] = new §_-UV§(_loc5_,this,null,_loc4_);
            _loc6_ = §_-X5§[§_-X5§.length - 1];
            this.§_-kp§[this.§_-kp§.length] = new §_-so§(this.§_-4s§,_loc3_);
            _loc7_ = this.§_-wp§;
            _loc8_ = this.§_-4V§;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.§_-Xm§ == §_-GG§)
            {
               _loc7_ = (this.§_-5Y§ - (_loc8_ - 1) * this.§_-1G§) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.§_-X5§[_loc6_.§_-X5§.length] = new §_-Fo§(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.§_-X5§[_loc6_.§_-X5§.length] = new §_-Fo§(_loc10_,_loc6_,new this.§_-Ss§() as MovieClip);
               }
               _loc11_ = _loc6_.§_-X5§[_loc6_.§_-X5§.length - 1] as §_-Fo§;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.§_-pL§(_loc12_,this.§_-RC§);
                  if(this.§_-lY§ == §_-Ud§)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.§_-RC§ == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.§_-1p§ == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.§_-1G§;
                  _loc11_.y = this.§_-Nq§ + _loc9_ * this.§_-mJ§;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.§_-4V§ * this.§_-1p§);
                  _loc15_ = (_loc9_ - _loc14_ * this.§_-4V§ * this.§_-1p§) / this.§_-4V§;
                  _loc16_ = (_loc9_ - _loc14_ * this.§_-4V§ * this.§_-1p§) % this.§_-4V§;
                  if(this.§_-di§)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.§_-1G§ + _loc14_ * this.§_-4V§ * this.§_-1G§;
                     _loc11_.y = this.§_-Nq§ + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.§_-Nq§ + _loc16_ * this.§_-mJ§ + _loc14_ * this.§_-4V§ * this.§_-mJ§;
                  }
               }
               (this.§_-kp§[this.§_-kp§.length - 1] as §_-so§).§_-bD§(_loc11_);
               _loc9_++;
            }
            (this.§_-kp§[this.§_-kp§.length - 1] as §_-so§).§_-hr§("");
            _loc6_.§_-vg§(this.§_-4V§,this.§_-Mh§,this.§_-IY§,this.§_-me§ * this.§_-1G§,this.§_-me§ * this.§_-mJ§,this.§_-1p§,this.§_-me§);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-o-§) : void
      {
         var _loc5_:§_-so§ = null;
         var _loc4_:§_-UV§ = getItemByName(this.§_-a0§) as §_-UV§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-hV§(_loc4_.override - 1);
               this.§_-Ff§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-hV§(_loc4_.override + 1);
               this.§_-Ff§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-o-§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-o-§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-7o§)
         {
            if((_loc5_ = this.§_-fN§((param3 as §_-7o§).mParentContainer.mName.toUpperCase())) && param3 is §_-Fo§)
            {
               _loc5_.§_-hr§((param3 as §_-7o§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-QO§(param1:String, param2:int) : void
      {
         var _loc3_:§_-UV§ = getItemByName(param1) as §_-UV§;
         if(_loc3_)
         {
            _loc3_.§_-hV§(param2);
            this.§_-Ff§();
         }
      }
      
      public function §_-fN§(param1:String) : §_-so§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-kp§.length)
         {
            if(param1.toUpperCase() == (this.§_-kp§[_loc2_] as §_-so§).mName.toUpperCase())
            {
               return this.§_-kp§[_loc2_] as §_-so§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-w§(param1:String) : void
      {
         this.§_-a0§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-X5§.length)
         {
            if(§_-X5§[_loc2_] is §_-UV§)
            {
               if((§_-X5§[_loc2_] as §_-UV§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-X5§[_loc2_] as §_-UV§).setActiveStatus(true);
               }
               else
               {
                  (§_-X5§[_loc2_] as §_-UV§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-Ff§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-so§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-kp§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-Ff§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-UV§ = getItemByName(this.§_-a0§) as §_-UV§;
         if(_loc1_)
         {
            if(_loc1_.override > 0)
            {
               (getItemByName("Button_Scroll1") as §_-Yk§).setComponentState(§_-TM§.§_-Y2§);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-Yk§).setComponentState(§_-TM§.§_-wD§);
            }
            if(_loc1_.override < _loc1_.§_-o6§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-Yk§).setComponentState(§_-TM§.§_-Y2§);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-Yk§).setComponentState(§_-TM§.§_-wD§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-Yk§).setComponentState(§_-TM§.§_-wD§);
            (getItemByName("Button_Scroll2") as §_-Yk§).setComponentState(§_-TM§.§_-wD§);
         }
      }
      
      public function §_-1d§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-X5§.length)
         {
            if(§_-X5§[_loc1_] is §_-UV§)
            {
               (§_-X5§[_loc1_] as §_-UV§).clear();
               §_-X5§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-w§("");
      }
      
      public function §_-je§() : void
      {
         var _loc1_:§_-so§ = null;
         for each(_loc1_ in this.§_-kp§)
         {
            _loc1_.§_-je§();
         }
      }
      
      public function §_-s9§() : Array
      {
         if(this.§_-fN§(this.§_-a0§) == null)
         {
            §_-HT§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-fN§(this.§_-a0§).§_-E2§();
      }
      
      public function §_-Mz§(param1:Array) : void
      {
         this.§_-fN§(this.§_-a0§).§_-Mz§(param1);
      }
      
      public function §_-u3§(param1:Number) : void
      {
         this.§_-fN§(this.§_-a0§).§_-u3§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-Ss§ = null;
         this.§_-kp§ = null;
         this.§_-Jm§ = null;
      }
   }
}
