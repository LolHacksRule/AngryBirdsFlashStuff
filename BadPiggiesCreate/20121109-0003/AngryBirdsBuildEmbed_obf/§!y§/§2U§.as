package §!y§
{
   import §"!E§.§8!%§;
   import §"!E§.§;!j§;
   import §"!E§.§?j§;
   import §"!E§.§[!s§;
   import §#!4§.§'^§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §=!3§.§;!!§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2U§ extends Sprite
   {
       
      
      protected var §7f§:§[!s§;
      
      protected var §0q§:MovieClip;
      
      protected var §+&§:§;!!§;
      
      public function §2U§(param1:§;!!§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         this.§+&§ = param1;
         this.§0q§ = new MovieClip();
         if(!_loc3_)
         {
            addChild(this.§0q§);
            this.§0q§.mouseEnabled = false;
         }
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§7f§ = new §[!s§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=N§();
            if(_loc1_ || _loc2_)
            {
               this.§7f§.clear();
               if(_loc1_ || _loc1_)
               {
                  this.§7f§ = null;
               }
            }
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function §[T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7f§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr43:
                     this.§7f§.setActiveStatus(true);
                     if(!_loc1_)
                     {
                        addr47:
                        visible = true;
                        if(_loc2_)
                        {
                           this.§0q§.visible = visible;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr47);
            }
            §§goto(addr43);
         }
         §§goto(addr47);
      }
      
      public function §`s§(param1:§;!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§=N§();
            if(!(_loc2_ && _loc3_))
            {
               this.§+&§ = param1;
               if(!(_loc2_ && _loc2_))
               {
                  addr53:
                  this.§[T§();
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §=N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§7f§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr66);
               }
               §§goto(addr61);
            }
            addr57:
            this.§7f§.setActiveStatus(false);
            if(!_loc2_)
            {
               addr61:
               visible = false;
               if(!_loc2_)
               {
                  addr66:
                  this.§0q§.visible = visible;
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§+&§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§7f§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().§1P§(param1,param2);
         }
         addr51:
         if(!(_loc3_ && param1))
         {
            §§push(this.§7f§);
         }
      }
      
      public function getItemByName(param1:String) : §'^§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7f§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§7f§);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §;!j§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §;!j§).setText(param1);
               }
            }
         }
      }
      
      public function §,!v§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && this))
         {
            if(_loc2_ is §;!j§)
            {
               if(_loc3_ || _loc3_)
               {
                  return (_loc2_ as §;!j§).§,!v§();
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
            if(_loc3_ is §<f§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §<f§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §=i§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?j§ = this.getItemByName(param1) as §?j§;
         if(_loc5_)
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  addr30:
                  _loc3_.§+!b§(param2);
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function §!!q§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?j§ = this.getItemByName(param1) as §?j§;
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  return _loc2_.§]!k§;
               }
            }
         }
         return "";
      }
      
      public function §+0§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8!%§ = null;
         for each(_loc1_ in this.§7f§.§?n§)
         {
            if(!_loc5_)
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
      
      public function §`_§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8!%§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§7f§.§?n§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(Boolean(_loc1_));
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§push(Boolean(_loc1_.§6!4§));
                           if(!_loc4_)
                           {
                              addr77:
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr77);
               }
               break;
            }
            return false;
         }
         addr81:
         true;
         return §§pop();
      }
      
      public function §&!s§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_ || param1)
         {
            _loc4_.drawRect(0,0,this.§+&§.getAppWidth(),this.§+&§.getAppHeight());
            if(_loc6_ || param1)
            {
               addr73:
               _loc4_.endFill();
            }
            return _loc3_;
         }
         §§goto(addr73);
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§7f§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().viewWidth = param1;
         }
         addr49:
         if(!_loc3_)
         {
            §§push(this.§7f§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7f§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().viewHeight = param1;
         }
         addr45:
         if(_loc3_ || this)
         {
            §§push(this.§7f§);
         }
      }
      
      public function get get() : §;!!§
      {
         return this.§+&§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§0q§;
      }
      
      public function get container() : §[!s§
      {
         return this.§7f§;
      }
   }
}
