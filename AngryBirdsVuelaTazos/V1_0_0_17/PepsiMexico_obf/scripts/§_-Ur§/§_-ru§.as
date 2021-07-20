package §_-Ur§
{
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Tk§;
   import §_-6r§.§_-h3§;
   import §_-F1§.§_-Nk§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-mr§;
   import §_-y7§.§_-VA§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-ru§ extends Sprite
   {
       
      
      private var §_-gH§:§_-k4§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-q8§:§_-VA§;
      
      public function §_-ru§(param1:§_-VA§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(!(_loc3_ && _loc3_))
         {
            this.§_-q8§ = param1;
            if(_loc2_ || _loc3_)
            {
               this.mMovieClip = new MovieClip();
               addChild(this.mMovieClip);
               if(!(_loc3_ && param1))
               {
                  addr61:
                  this.mMovieClip.mouseEnabled = false;
                  addr65:
                  this.mouseEnabled = false;
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr61);
      }
      
      public function init(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-gH§ = new §_-k4§(param1,null,this);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-JE§();
            if(_loc1_)
            {
               this.§_-gH§.clear();
               if(_loc1_)
               {
                  addr31:
                  this.§_-gH§ = null;
               }
               while(numChildren > 0)
               {
                  removeChildAt(0);
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr31);
      }
      
      public function §_-aN§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§_-gH§.setActiveStatus(true);
            if(!(_loc1_ && this))
            {
               §§goto(addr46);
            }
            §§goto(addr51);
         }
         addr46:
         visible = true;
         if(!_loc1_)
         {
            addr51:
            this.mMovieClip.visible = visible;
         }
      }
      
      public function §_-JE§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-gH§.setActiveStatus(false);
            if(!(_loc2_ && _loc1_))
            {
               visible = false;
               if(!_loc2_)
               {
                  addr45:
                  this.mMovieClip.visible = visible;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§_-q8§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §_-yS§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§_-gH§.§_-hr§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §_-Tk§
      {
         return this.§_-gH§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc5_ && param1))
         {
            if(_loc3_ is §_-V1§)
            {
               if(_loc4_ || this)
               {
                  addr50:
                  (_loc3_ as §_-V1§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_)
         {
            if(_loc2_ is §_-V1§)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr46);
               }
            }
            return "";
         }
         addr46:
         return (_loc2_ as §_-V1§).getText();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc5_)
         {
            if(_loc3_ is §_-h3§)
            {
               if(!_loc5_)
               {
                  (_loc3_ as §_-h3§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-DR§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-mr§ = this.getItemByName(param1) as §_-mr§;
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  addr46:
                  _loc3_.§_-Re§(param2);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-NV§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-mr§ = this.getItemByName(param1) as §_-mr§;
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  return _loc2_.§_-RU§;
               }
            }
         }
         return "";
      }
      
      public function §_-nl§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-gH§.§_-yZ§)
         {
            if(_loc4_)
            {
               if(!(_loc1_ is §_-Nk§))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  continue;
               }
            }
            (_loc1_ as §_-Nk§).close();
         }
      }
      
      public function §_-0Q§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§_-gH§.§_-yZ§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(_loc1_ is §_-Nk§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr53:
                           §§pop();
                           if(!_loc5_)
                           {
                              addr56:
                              §§push(Boolean((_loc1_ as §_-Nk§).§_-DE§));
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr63:
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr53);
               }
               §§goto(addr56);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §_-Ai§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_)
         {
            _loc4_.drawRect(0,0,this.§_-q8§.getAppWidth(),this.§_-q8§.getAppHeight());
            if(!(_loc6_ && _loc3_))
            {
               addr58:
               _loc4_.endFill();
            }
            return _loc3_;
         }
         §§goto(addr58);
      }
      
      public function get container() : §_-k4§
      {
         return this.§_-gH§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-gH§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr32:
                     this.§_-gH§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§_-gH§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr48:
                     this.§_-gH§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
   }
}
