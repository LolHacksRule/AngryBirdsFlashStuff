package §_-Yl§
{
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-SW§;
   import §_-6C§.§_-gt§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-x8§.§_-nG§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-5q§ extends Sprite
   {
       
      
      protected var §_-7c§:§_-gt§;
      
      protected var §_-Y4§:MovieClip;
      
      protected var §_-bQ§:§_-nG§;
      
      public function §_-5q§(param1:§_-nG§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§_-bQ§ = param1;
               addr46:
               if(_loc3_ && param1)
               {
                  continue;
               }
               return;
               addr63:
            }
         }
         loop1:
         while(true)
         {
            this.§_-Y4§ = new MovieClip();
            loop2:
            while(true)
            {
               addChild(this.§_-Y4§);
               while(!_loc3_)
               {
                  this.§_-Y4§.mouseEnabled = false;
                  while(_loc2_)
                  {
                     this.mouseEnabled = false;
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                     §§goto(addr46);
                  }
               }
               continue loop1;
            }
         }
         §§goto(addr63);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-7c§ = new §_-gt§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-nr§();
            do
            {
               this.§_-7c§.clear();
               do
               {
                  this.§_-7c§ = null;
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(_loc2_ || this)
               {
                  break;
               }
            }
            else
            {
               removeChildAt(0);
            }
         }
      }
      
      public function activateView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-7c§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  addr70:
                  while(true)
                  {
                     §§push(this.§_-7c§);
                     addr72:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr74:
                        while(true)
                        {
                        }
                     }
                  }
                  addr70:
               }
               loop0:
               while(true)
               {
                  visible = true;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        this.§_-Y4§.visible = visible;
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr74);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr70);
      }
      
      public function §_-LG§(param1:§_-nG§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-nr§();
            do
            {
               this.§_-bQ§ = param1;
               do
               {
                  this.activateView();
               }
               while(!(_loc2_ || this));
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §_-nr§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-7c§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr77:
                     this.§_-7c§.setActiveStatus(false);
                  }
                  while(true)
                  {
                     addr55:
                     while(_loc1_ || this)
                     {
                        this.§_-Y4§.visible = visible;
                        if(!_loc1_)
                        {
                           continue;
                        }
                        return;
                        addr50:
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  visible = false;
                  §§goto(addr55);
                  §§goto(addr79);
               }
            }
            §§goto(addr77);
         }
         §§goto(addr50);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§_-bQ§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§_-7c§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().§_-dA§(param1,param2);
         }
         addr51:
         if(_loc4_ || this)
         {
            §§push(this.§_-7c§);
         }
      }
      
      public function getItemByName(param1:String) : §_-rD§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-7c§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§_-7c§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §_-0Eo§)
            {
               if(!(_loc5_ && param1))
               {
                  addr44:
                  (_loc3_ as §_-0Eo§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-06e§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(!_loc3_)
         {
            if(_loc2_ is §_-0Eo§)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr45);
               }
            }
            return "";
         }
         addr45:
         return (_loc2_ as §_-0Eo§).§_-06e§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is §_-rR§)
            {
               if(!(_loc4_ && param2))
               {
                  addr45:
                  (_loc3_ as §_-rR§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-oK§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-05d§ = this.getItemByName(param1) as §_-05d§;
         if(_loc4_ || param2)
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  addr44:
                  _loc3_.§_-F8§(param2);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-0ER§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-05d§ = this.getItemByName(param1) as §_-05d§;
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§goto(addr29);
               }
            }
            return "";
         }
         addr29:
         return _loc2_.§_-eR§;
      }
      
      public function §_-hW§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-SW§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-7c§.§_-057§)
         {
            if(!_loc5_)
            {
               if(_loc1_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §_-Sf§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-SW§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§_-7c§.§_-057§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               §§push(Boolean(_loc1_));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     addr68:
                     §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(Boolean(_loc1_.§_-ej§));
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        addr86:
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
                  §§goto(addr86);
               }
               §§goto(addr68);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §_-Zv§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!(_loc6_ && _loc3_))
         {
            _loc4_.drawRect(0,0,this.§_-bQ§.getAppWidth(),this.§_-bQ§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(_loc6_ && this);
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§_-7c§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr48:
                     this.§_-7c§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-7c§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§_-7c§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function get §_-Dh§() : §_-nG§
      {
         return this.§_-bQ§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§_-Y4§;
      }
      
      public function get §_-jX§() : §_-gt§
      {
         return this.§_-7c§;
      }
   }
}
