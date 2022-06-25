package §4!9§
{
   import §4H§.StateBase;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§1B§;
   import §]!6§.UIContainerRovio;
   import §]!6§.UIRepeaterRovio;
   import §]!6§.UITextFieldRovio;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6"§ extends Sprite
   {
       
      
      protected var §'K§:UIContainerRovio;
      
      protected var §`!j§:MovieClip;
      
      protected var §3!C§:StateBase;
      
      public function §6"§(param1:StateBase)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§3!C§ = param1;
            loop1:
            do
            {
               this.§`!j§ = new MovieClip();
               loop2:
               while(true)
               {
                  addChild(this.§`!j§);
                  do
                  {
                     this.§`!j§.mouseEnabled = false;
                     continue loop2;
                  }
                  while(_loc3_);
                  
                  continue loop1;
               }
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§'K§ = new UIContainerRovio(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§"!e§();
            do
            {
               this.§'K§.clear();
               do
               {
                  this.§'K§ = null;
               }
               while(_loc2_);
               
            }
            while(_loc2_ && this);
            
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(_loc1_)
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
         if(!(_loc2_ && this))
         {
            §§push(this.§'K§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'K§);
                     addr89:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr92:
                        while(true)
                        {
                        }
                     }
                     addr68:
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§`!j§.visible = visible;
                        if(!_loc1_)
                        {
                           while(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr92);
                           addr51:
                        }
                        return;
                     }
                  }
               }
               while(true)
               {
                  visible = true;
                  §§goto(addr51);
                  §§goto(addr92);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr92);
      }
      
      public function §,y§(param1:StateBase) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!e§();
         }
         do
         {
            this.§3!C§ = param1;
            do
            {
               this.activateView();
            }
            while(_loc3_ && this);
            
         }
         while(_loc3_);
         
      }
      
      public function §"!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'K§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'K§);
                     addr90:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr93:
                        while(true)
                        {
                        }
                     }
                     addr69:
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§`!j§.visible = visible;
                        if(_loc1_ && _loc1_)
                        {
                           while(_loc2_ || this)
                           {
                              §§goto(addr69);
                           }
                           §§goto(addr93);
                           addr52:
                        }
                        return;
                     }
                  }
               }
               while(true)
               {
                  visible = false;
                  §§goto(addr52);
                  §§goto(addr93);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr93);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§3!C§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§'K§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr29:
                     this.§'K§.§'§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr29);
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§'K§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§'K§);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ is UITextFieldRovio)
            {
               if(_loc5_)
               {
                  (_loc3_ as UITextFieldRovio).setText(param1);
               }
            }
         }
      }
      
      public function §8"§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ is UITextFieldRovio)
            {
               if(_loc3_)
               {
                  §§goto(addr45);
               }
            }
            return "";
         }
         addr45:
         return (_loc2_ as UITextFieldRovio).§8"§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc5_)
         {
            if(_loc3_ is UIComponentInteractiveRovio)
            {
               if(_loc4_ || _loc3_)
               {
                  addr45:
                  (_loc3_ as UIComponentInteractiveRovio).setComponentState(param1);
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
      
      public function §31§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(!(_loc5_ && this))
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  _loc3_.§ v§(param2);
               }
            }
         }
      }
      
      public function §2!<§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc4_)
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
         return _loc2_.§5!8§;
      }
      
      public function §<F§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§1B§ = null;
         for each(_loc1_ in this.§'K§.§4!W§)
         {
            if(_loc5_)
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §5!g§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§1B§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§'K§.§4!W§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_ || _loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(Boolean(_loc1_.§@!#§));
                              if(_loc5_ && _loc3_)
                              {
                              }
                              §§goto(addr88);
                           }
                           continue;
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr88);
               }
               break;
            }
            return false;
         }
         addr88:
         true;
         return §§pop();
      }
      
      public function §'T§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         if(_loc5_)
         {
            _loc4_.beginFill(param1,param2);
            while(true)
            {
               _loc4_.drawRect(0,0,this.§3!C§.getAppWidth(),this.§3!C§.getAppHeight());
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            _loc4_.endFill();
            if(_loc5_)
            {
               if(!(_loc6_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§'K§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr44:
                     this.§'K§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'K§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr49:
                     this.§'K§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function get §@s§() : StateBase
      {
         return this.§3!C§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`!j§;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.§'K§;
      }
   }
}
