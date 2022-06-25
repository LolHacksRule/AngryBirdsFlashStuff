package §@!H§
{
   import §"!2§.§,!J§;
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterRovio;
   import §"!2§.UITextFieldRovio;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §[!>§.StateBase;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §-!H§ extends Sprite
   {
       
      
      protected var §6!$§:UIContainerRovio;
      
      protected var §&e§:MovieClip;
      
      protected var §<!a§:StateBase;
      
      public function §-!H§(param1:StateBase)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§<!a§ = param1;
               while(true)
               {
                  this.§&e§ = new MovieClip();
                  continue loop0;
                  addr57:
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§6!$§ = new UIContainerRovio(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§ !X§();
            while(true)
            {
               this.§6!$§.clear();
               §§goto(addr82);
            }
         }
         addr82:
         while(true)
         {
            this.§6!$§ = null;
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!(_loc1_ && this))
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
            §§push(this.§6!$§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr85:
                     this.§6!$§.setActiveStatus(true);
                     addr88:
                     while(true)
                     {
                     }
                     addr88:
                  }
                  §§goto(addr88);
               }
               while(true)
               {
                  visible = true;
                  while(!(_loc1_ && _loc1_))
                  {
                     this.§&e§.visible = visible;
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §3Q§(param1:StateBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !X§();
            while(true)
            {
               this.§<!a§ = param1;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            this.activateView();
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function § !X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6!$§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6!$§);
                     addr79:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr82:
                        while(true)
                        {
                        }
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  visible = false;
                  do
                  {
                     this.§&e§.visible = visible;
                  }
                  while(_loc2_);
                  
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr77);
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr82);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§<!a§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§6!$§);
            if(_loc3_)
            {
               if(§§pop())
               {
               }
               §§goto(addr47);
            }
            §§pop().§3N§(param1,param2);
         }
         addr47:
         if(_loc3_)
         {
            §§push(this.§6!$§);
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§6!$§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§6!$§);
                  }
                  else
                  {
                     §§goto(addr56);
                  }
               }
               §§goto(addr56);
            }
            return §§pop().getItemByName(param1);
         }
         addr56:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc5_ && param1))
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
      
      public function §5!!§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ is UITextFieldRovio)
            {
               if(_loc3_ || _loc2_)
               {
                  return (_loc2_ as UITextFieldRovio).§5!!§();
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
         if(_loc4_ || param2)
         {
            if(_loc3_ is UIComponentInteractiveRovio)
            {
               if(_loc4_ || this)
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
      
      public function §5n§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc5_)
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  addr42:
                  _loc3_.§!+§(param2);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §"D§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§goto(addr41);
               }
            }
            return "";
         }
         addr41:
         return _loc2_.§;!=§;
      }
      
      public function §9!^§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!J§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§6!$§.§ !]§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc1_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §[!'§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!J§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§6!$§.§ !]§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc4_ && this)
                           {
                              addr94:
                              break;
                           }
                           §§push(Boolean(_loc1_.§4b§));
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           addr85:
                           if(§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr85);
               }
               break;
            }
            return false;
         }
         §§goto(addr94);
         §§push(true);
      }
      
      public function §&!L§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         if(_loc5_ || this)
         {
            _loc4_.beginFill(param1,param2);
            while(true)
            {
               _loc4_.drawRect(0,0,this.§<!a§.getAppWidth(),this.§<!a§.getAppHeight());
               §§goto(addr88);
            }
         }
         addr88:
         while(true)
         {
            _loc4_.endFill();
            if(!(_loc6_ && this))
            {
               if(!(_loc6_ && param1))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§6!$§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr48:
                     this.§6!$§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6!$§);
            if(!_loc2_)
            {
               if(§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().viewHeight = param1;
         }
         addr46:
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6!$§);
         }
      }
      
      public function get §-z§() : StateBase
      {
         return this.§<!a§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&e§;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.§6!$§;
      }
   }
}
