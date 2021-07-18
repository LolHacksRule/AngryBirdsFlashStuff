package §`"%§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7!t§;
   import §%i§.§=!t§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`_§ extends Sprite
   {
       
      
      protected var §>!=§:§0!Y§;
      
      protected var §&R§:MovieClip;
      
      protected var §3"U§:§+d§;
      
      public function §`_§(param1:§+d§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§3"U§ = param1;
               while(true)
               {
                  this.§&R§ = new MovieClip();
                  while(!_loc3_)
                  {
                     addChild(this.§&R§);
                     addr57:
                     if(!(_loc3_ && this))
                     {
                        if(!_loc3_)
                        {
                           this.mouseEnabled = false;
                           addr76:
                           if(!(_loc3_ && _loc2_))
                           {
                              return;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr57);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§&R§.mouseEnabled = false;
                                    continue loop4;
                                 }
                                 addr82:
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§>!=§ = new §0!Y§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^#§();
            while(true)
            {
               this.§>!=§.clear();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§>!=§ = null;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     if(numChildren <= 0)
                     {
                        if(_loc1_ || _loc1_)
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
         §§goto(addr73);
      }
      
      public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§>!=§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§>!=§);
                     addr83:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr85:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  visible = true;
                  §§goto(addr70);
               }
            }
            §§goto(addr83);
         }
         addr70:
         while(true)
         {
            this.§&R§.visible = visible;
            if(!(_loc2_ || this))
            {
               continue;
            }
            if(!_loc2_)
            {
               continue loop1;
            }
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr81);
         }
      }
      
      public function §6!!§(param1:§+d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^#§();
            while(true)
            {
               this.§3"U§ = param1;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.activateView();
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §^#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§>!=§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§>!=§);
                     addr82:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr84:
                        while(true)
                        {
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  visible = false;
                  §§goto(addr74);
               }
            }
            §§goto(addr82);
         }
         addr74:
         while(true)
         {
            this.§&R§.visible = visible;
            if(!(_loc1_ || this))
            {
               continue;
            }
            if(!(_loc1_ || _loc2_))
            {
               continue loop1;
            }
            if(_loc1_)
            {
               break;
            }
            §§goto(addr80);
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§3"U§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§>!=§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().§0! §(param1,param2);
         }
         addr45:
         if(!_loc4_)
         {
            §§push(this.§>!=§);
         }
      }
      
      public function getItemByName(param1:String) : §!>§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§>!=§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§>!=§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §4"9§)
            {
               if(_loc4_ || param2)
               {
                  addr44:
                  (_loc3_ as §4"9§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function § do§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ is §4"9§)
            {
               if(!_loc3_)
               {
                  return (_loc2_ as §4"9§).§ do§();
               }
            }
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_ || _loc3_)
         {
            if(_loc3_ is §!!G§)
            {
               if(!_loc4_)
               {
                  addr45:
                  (_loc3_ as §!!G§).setComponentState(param1);
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
      
      public function §+"I§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!t§ = this.getItemByName(param1) as §7!t§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  _loc3_.§@"W§(param2);
               }
            }
         }
      }
      
      public function §8!F§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!t§ = this.getItemByName(param1) as §7!t§;
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr45);
               }
            }
            return "";
         }
         addr45:
         return _loc2_.§9!?§;
      }
      
      public function §=g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=!t§ = null;
         for each(_loc1_ in this.§>!=§.§+?§)
         {
            if(!(_loc4_ && this))
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
      
      public function §4j§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=!t§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§>!=§.§+?§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(Boolean(_loc1_));
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§pop();
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           §§push(Boolean(_loc1_.§!!V§));
                           if(_loc5_ || this)
                           {
                              addr97:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr97);
               }
               break;
            }
            return false;
         }
         addr106:
         true;
         return §§pop();
      }
      
      public function §!B§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_)
         {
            _loc4_.drawRect(0,0,this.§3"U§.getAppWidth(),this.§3"U§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(!(_loc6_ || param2));
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>!=§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().viewWidth = param1;
         }
         addr50:
         if(_loc3_ || param1)
         {
            §§push(this.§>!=§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>!=§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr48:
                     this.§>!=§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function get §=z§() : §+d§
      {
         return this.§3"U§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&R§;
      }
      
      public function get container() : §0!Y§
      {
         return this.§>!=§;
      }
   }
}
