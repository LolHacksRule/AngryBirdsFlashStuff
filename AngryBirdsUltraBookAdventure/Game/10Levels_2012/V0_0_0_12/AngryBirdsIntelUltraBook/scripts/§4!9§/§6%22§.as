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
         if(_loc2_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§3!C§ = param1;
               addr101:
               while(true)
               {
                  this.§`!j§ = new MovieClip();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            addChild(this.§`!j§);
            §§goto(addr81);
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§'K§ = new UIContainerRovio(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!e§();
         }
         do
         {
            this.§'K§.clear();
            do
            {
               this.§'K§ = null;
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_ && this);
         
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!_loc1_)
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
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr84:
                     this.§'K§.setActiveStatus(true);
                  }
                  while(true)
                  {
                     addr66:
                     loop2:
                     while(!(_loc2_ && _loc1_))
                     {
                        while(true)
                        {
                           this.§`!j§.visible = visible;
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  visible = true;
                  §§goto(addr66);
                  §§goto(addr87);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr73);
      }
      
      public function §,y§(param1:StateBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§"!e§();
            do
            {
               this.§3!C§ = param1;
               do
               {
                  this.activateView();
               }
               while(!_loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function §"!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§'K§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'K§);
                     addr80:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr83:
                        while(true)
                        {
                        }
                     }
                  }
                  addr78:
               }
               while(true)
               {
                  visible = false;
                  do
                  {
                     this.§`!j§.visible = visible;
                  }
                  while(_loc1_);
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               return;
               addr61:
            }
            §§goto(addr80);
         }
         §§goto(addr61);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§3!C§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§'K§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     this.§'K§.§'§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'K§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr44);
                  }
               }
               return null;
            }
            §§goto(addr44);
         }
         addr44:
         return this.§'K§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is UITextFieldRovio)
            {
               if(_loc4_)
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
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ is UITextFieldRovio)
            {
               if(!_loc4_)
               {
                  return (_loc2_ as UITextFieldRovio).§8"§();
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
         if(_loc4_)
         {
            if(_loc3_ is UIComponentInteractiveRovio)
            {
               if(!(_loc5_ && param2))
               {
                  (_loc3_ as UIComponentInteractiveRovio).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §31§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               if(_loc5_ || this)
               {
                  addr52:
                  _loc3_.§ v§(param2);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §2!<§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(!(_loc4_ && param1))
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  return _loc2_.§5!8§;
               }
            }
         }
         return "";
      }
      
      public function §<F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§1B§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§'K§.§4!W§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
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
               if(_loc4_ || _loc2_)
               {
                  §§push(Boolean(_loc1_));
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           §§pop();
                           if(!(_loc4_ || this))
                           {
                              addr103:
                              break;
                           }
                           §§push(Boolean(_loc1_.§@!#§));
                           if(_loc5_ && _loc1_)
                           {
                              return §§pop();
                           }
                           addr99:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr99);
               }
               break;
            }
            return false;
         }
         §§goto(addr103);
         §§push(true);
      }
      
      public function §'T§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         if(_loc6_ || param2)
         {
            _loc4_.beginFill(param1,param2);
            while(true)
            {
               _loc4_.drawRect(0,0,this.§3!C§.getAppWidth(),this.§3!C§.getAppHeight());
               while(!(_loc5_ && param1))
               {
                  _loc4_.endFill();
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  return _loc3_;
                  addr69:
               }
            }
         }
         §§goto(addr69);
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'K§);
            if(!_loc2_)
            {
               if(§§pop())
               {
               }
               §§goto(addr31);
            }
            §§pop().viewWidth = param1;
         }
         addr31:
         if(_loc3_)
         {
            §§push(this.§'K§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§'K§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
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
