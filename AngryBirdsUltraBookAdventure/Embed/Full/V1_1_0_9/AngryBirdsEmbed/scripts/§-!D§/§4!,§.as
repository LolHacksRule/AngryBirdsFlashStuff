package §-!D§
{
   import §%4§.§"e§;
   import §%4§.§4!=§;
   import §%4§.§]q§;
   import §%4§.§`a§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §7g§.§1Q§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4!,§ extends Sprite
   {
       
      
      protected var §?!@§:§4!=§;
      
      protected var § null§:MovieClip;
      
      protected var §7u§:§1Q§;
      
      public function §4!,§(param1:§1Q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super();
         this.§7u§ = param1;
         this.§ null§ = new MovieClip();
         addChild(this.§ null§);
         if(_loc3_)
         {
            this.§ null§.mouseEnabled = false;
            if(!(_loc2_ && _loc2_))
            {
               this.mouseEnabled = false;
            }
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§?!@§ = new §4!=§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!§();
            if(_loc1_)
            {
               §§goto(addr32);
            }
            §§goto(addr37);
         }
         addr32:
         this.§?!@§.clear();
         if(_loc1_)
         {
            addr37:
            this.§?!@§ = null;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
            if(_loc2_ && _loc2_)
            {
               break;
            }
         }
      }
      
      public function §@2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?!@§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr37);
                  }
                  §§goto(addr51);
               }
               §§goto(addr46);
            }
            addr37:
            this.§?!@§.setActiveStatus(true);
            §§goto(addr35);
         }
         addr35:
         if(_loc1_ || _loc2_)
         {
            addr46:
            visible = true;
            if(!_loc2_)
            {
               addr51:
               this.§ null§.visible = visible;
            }
         }
      }
      
      public function §>z§(param1:§1Q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!§();
            if(_loc3_)
            {
               this.§7u§ = param1;
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr45);
            }
            this.§@2§();
         }
         addr45:
      }
      
      public function §^!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?!@§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr53:
                     this.§?!@§.setActiveStatus(false);
                     if(!_loc1_)
                     {
                        §§goto(addr57);
                     }
                     §§goto(addr67);
                  }
               }
               addr57:
               visible = false;
               if(_loc2_ || _loc1_)
               {
                  addr67:
                  this.§ null§.visible = visible;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§7u§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§?!@§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().§-!7§(param1,param2);
         }
         addr50:
         if(!(_loc4_ && param2))
         {
            §§push(this.§?!@§);
         }
      }
      
      public function getItemByName(param1:String) : §'!,§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!@§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     §§push(this.§?!@§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().getItemByName(param1);
         }
         addr50:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_ is §`a§)
            {
               if(!_loc5_)
               {
                  (_loc3_ as §`a§).setText(param1);
               }
            }
         }
      }
      
      public function §'Y§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!_loc4_)
         {
            if(_loc2_ is §`a§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr44);
               }
            }
            return "";
         }
         addr44:
         return (_loc2_ as §`a§).§'Y§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_ || param1)
         {
            if(_loc3_ is §0K§)
            {
               if(_loc5_)
               {
                  addr45:
                  (_loc3_ as §0K§).setComponentState(param1);
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
      
      public function §!!=§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]q§ = this.getItemByName(param1) as §]q§;
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && param1))
               {
                  addr45:
                  _loc3_.§^B§(param2);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §3J§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]q§ = this.getItemByName(param1) as §]q§;
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr50);
               }
            }
            return "";
         }
         addr50:
         return _loc2_.§^^§;
      }
      
      public function §&!J§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"e§ = null;
         for each(_loc1_ in this.§?!@§.§+q§)
         {
            if(_loc4_)
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §%F§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§"e§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§?!@§.§+q§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr69:
                           §§pop();
                           if(!_loc4_)
                           {
                              addr72:
                              §§push(Boolean(_loc1_.§"a§));
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr82:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           §§push(true);
                           break;
                        }
                        break;
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr69);
               }
               §§goto(addr72);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §>W§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_ || this)
         {
            _loc4_.drawRect(0,0,this.§7u§.getAppWidth(),this.§7u§.getAppHeight());
            if(_loc6_ || param2)
            {
               _loc4_.endFill();
            }
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§?!@§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr28:
                     this.§?!@§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr28);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§?!@§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr48:
                     this.§?!@§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function get §2!J§() : §1Q§
      {
         return this.§7u§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§ null§;
      }
      
      public function get container() : §4!=§
      {
         return this.§?!@§;
      }
   }
}
