package §1n§
{
   import §8,§.§+_§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§%^§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import §`M§.§[A§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § C§ extends Sprite
   {
       
      
      protected var §5M§:§9!#§;
      
      protected var §=!Y§:MovieClip;
      
      protected var §default§:§+_§;
      
      public function § C§(param1:§+_§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§default§ = param1;
               while(true)
               {
                  this.§=!Y§ = new MovieClip();
                  addr83:
                  while(_loc2_)
                  {
                  }
               }
               addr52:
               if(_loc2_ || _loc3_)
               {
                  this.mouseEnabled = false;
                  addr69:
                  if(_loc3_ && this)
                  {
                     while(_loc2_)
                     {
                        §§goto(addr52);
                        §§goto(addr69);
                     }
                     while(_loc2_)
                     {
                        this.§=!Y§.mouseEnabled = false;
                        §§goto(addr50);
                     }
                     addr50:
                     §§goto(addr83);
                     addr75:
                  }
                  return;
               }
            }
         }
         while(true)
         {
            addChild(this.§=!Y§);
            §§goto(addr75);
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§5M§ = new §9!#§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#R§();
         }
         do
         {
            this.§5M§.clear();
            do
            {
               this.§5M§ = null;
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || this));
         
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§5M§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  addr71:
                  while(true)
                  {
                     §§push(this.§5M§);
                     addr73:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr71:
               }
               loop0:
               while(true)
               {
                  visible = true;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        this.§=!Y§.visible = visible;
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              break loop0;
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr75);
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr71);
      }
      
      public function §-E§(param1:§+_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#R§();
            while(true)
            {
               this.§default§ = param1;
               while(!_loc2_)
               {
                  this.activateView();
                  if(_loc3_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §#R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§5M§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5M§);
                     addr78:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr80:
                        while(true)
                        {
                        }
                     }
                     addr56:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr63:
                  }
               }
               while(true)
               {
                  visible = false;
                  while(!_loc1_)
                  {
                     this.§=!Y§.visible = visible;
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr80);
               }
               §§goto(addr63);
            }
            §§goto(addr78);
         }
         §§goto(addr80);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§default§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§5M§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(_loc4_ || param2)
                  {
                     addr48:
                     this.§5M§.§;!=§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function getItemByName(param1:String) : §&W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§5M§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§5M§);
                  }
                  else
                  {
                     §§goto(addr31);
                  }
               }
               §§goto(addr31);
            }
            return §§pop().getItemByName(param1);
         }
         addr31:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §3!@§)
            {
               if(!_loc5_)
               {
                  addr39:
                  (_loc3_ as §3!@§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §%!i§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ is §3!@§)
            {
               if(!(_loc4_ && this))
               {
                  return (_loc2_ as §3!@§).§%!i§();
               }
            }
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc5_)
         {
            if(_loc3_ is §5!a§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §5!a§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §%! §(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[A§ = this.getItemByName(param1) as §[A§;
         if(!(_loc5_ && param1))
         {
            if(_loc3_)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc3_.§69§(param2);
               }
            }
         }
      }
      
      public function §[!,§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[A§ = this.getItemByName(param1) as §[A§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  return _loc2_.§[N§;
               }
            }
         }
         return "";
      }
      
      public function §5!_§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%^§ = null;
         for each(_loc1_ in this.§5M§.§0!i§)
         {
            if(_loc5_)
            {
               if(_loc1_)
               {
                  if(!(_loc4_ && this))
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §&!?§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§%^§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§5M§.§0!i§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && _loc1_))
               {
                  §§push(Boolean(_loc1_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              §§push(Boolean(_loc1_.§2]§));
                              if(!_loc5_)
                              {
                                 addr81:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           §§push(true);
                           break;
                        }
                     }
                     §§goto(addr81);
                  }
                  break;
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function §=!N§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_)
         {
            _loc4_.drawRect(0,0,this.§default§.getAppWidth(),this.§default§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(_loc5_ && this);
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5M§);
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().viewWidth = param1;
         }
         addr44:
         if(!_loc3_)
         {
            §§push(this.§5M§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§5M§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§5M§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function get § T§() : §+_§
      {
         return this.§default§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=!Y§;
      }
      
      public function get §>&§() : §9!#§
      {
         return this.§5M§;
      }
   }
}
