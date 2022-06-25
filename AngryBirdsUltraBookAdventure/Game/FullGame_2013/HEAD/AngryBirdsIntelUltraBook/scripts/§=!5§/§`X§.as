package §=!5§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §6a§.§+_§;
   import §6a§.UIContainerRovio;
   import §6a§.UIRepeaterRovio;
   import §6a§.UITextFieldRovio;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`X§ extends Sprite
   {
       
      
      protected var §2$§:UIContainerRovio;
      
      protected var §2!U§:MovieClip;
      
      protected var §1!#§:StateBase;
      
      public function §`X§(param1:StateBase)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§1!#§ = param1;
            loop1:
            while(true)
            {
               this.§2!U§ = new MovieClip();
               do
               {
                  addChild(this.§2!U§);
                  do
                  {
                     this.§2!U§.mouseEnabled = false;
                     continue loop1;
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§2$§ = new UIContainerRovio(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§&!N§();
         }
         while(true)
         {
            this.§2$§.clear();
            while(!(_loc2_ && this))
            {
               this.§2$§ = null;
               if(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     if(numChildren <= 0)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        removeChildAt(0);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§2$§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§2$§);
                     addr95:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr98:
                        while(true)
                        {
                        }
                     }
                     addr52:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     return;
                     addr59:
                  }
               }
               while(true)
               {
                  visible = true;
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§2!U§.visible = visible;
                        if(_loc1_ && this)
                        {
                           continue loop2;
                        }
                        §§goto(addr52);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr81);
      }
      
      public function §0!5§(param1:StateBase) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&!N§();
         }
         do
         {
            this.§1!#§ = param1;
            do
            {
               this.activateView();
            }
            while(!(_loc2_ || param1));
            
         }
         while(_loc3_ && this);
         
      }
      
      public function §&!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§2$§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§2$§);
                     addr89:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr92:
                        while(true)
                        {
                        }
                     }
                     addr68:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§2!U§.visible = visible;
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 return;
                                 addr53:
                                 addr63:
                              }
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr92);
                  }
               }
               while(true)
               {
                  visible = false;
                  §§goto(addr68);
                  §§goto(addr92);
               }
               §§goto(addr53);
            }
            §§goto(addr89);
         }
         §§goto(addr63);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§1!#§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§2$§);
            if(!_loc3_)
            {
               if(§§pop())
               {
               }
               §§goto(addr48);
            }
            §§pop().§?Q§(param1,param2);
         }
         addr48:
         if(!(_loc3_ && param2))
         {
            §§push(this.§2$§);
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§2$§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§2$§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return §§pop().getItemByName(param1);
         }
         addr46:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc4_ && param1))
         {
            if(_loc3_ is UITextFieldRovio)
            {
               if(_loc5_ || _loc3_)
               {
                  (_loc3_ as UITextFieldRovio).setText(param1);
               }
            }
         }
      }
      
      public function §+b§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!_loc4_)
         {
            if(_loc2_ is UITextFieldRovio)
            {
               if(!_loc4_)
               {
                  §§goto(addr40);
               }
            }
            return "";
         }
         addr40:
         return (_loc2_ as UITextFieldRovio).§+b§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_ || param1)
         {
            if(_loc3_ is UIComponentInteractiveRovio)
            {
               if(_loc4_ || param2)
               {
                  addr50:
                  (_loc3_ as UIComponentInteractiveRovio).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §+!L§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && param1))
               {
                  _loc3_.§>!K§(param2);
               }
            }
         }
      }
      
      public function §-!6§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  §§goto(addr42);
               }
            }
            return "";
         }
         addr42:
         return _loc2_.§ !5§;
      }
      
      public function §1#§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+_§ = null;
         for each(_loc1_ in this.§2$§.§]6§)
         {
            if(_loc5_)
            {
               if(_loc1_)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §6!#§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+_§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§2$§.§]6§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              addr85:
                              §§push(Boolean(_loc1_.§0x§));
                              if(_loc5_ || _loc2_)
                              {
                                 addr95:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ || _loc2_))
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
                     §§goto(addr95);
                  }
                  break;
               }
               §§goto(addr85);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §7!%§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         if(_loc5_)
         {
            _loc4_.beginFill(param1,param2);
         }
         while(true)
         {
            _loc4_.drawRect(0,0,this.§1!#§.getAppWidth(),this.§1!#§.getAppHeight());
            while(!(_loc6_ && this))
            {
               _loc4_.endFill();
               if(!_loc6_)
               {
                  return _loc3_;
               }
            }
         }
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§2$§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().viewWidth = param1;
         }
         addr51:
         if(_loc3_ || _loc3_)
         {
            §§push(this.§2$§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§2$§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr48:
                     this.§2$§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function get §'4§() : StateBase
      {
         return this.§1!#§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§2!U§;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.§2$§;
      }
   }
}
