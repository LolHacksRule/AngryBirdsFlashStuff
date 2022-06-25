package §1;§
{
   import §'X§.§9[§;
   import §=^§.§ p§;
   import §=^§.§"M§;
   import §=^§.§;%§;
   import §=^§.§`f§;
   import §@s§.§'!0§;
   import §@s§.§3!?§;
   import §@s§.§9$§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!!1§ extends Sprite
   {
       
      
      protected var § !6§:§`f§;
      
      protected var §[!;§:MovieClip;
      
      protected var §^t§:§9[§;
      
      public function §!!1§(param1:§9[§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            this.§^t§ = param1;
            if(_loc3_)
            {
               this.§[!;§ = new MovieClip();
               if(_loc3_)
               {
                  addChild(this.§[!;§);
               }
            }
         }
         this.§[!;§.mouseEnabled = false;
         if(_loc3_ || this)
         {
            this.mouseEnabled = false;
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§ !6§ = new §`f§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=Q§();
            if(_loc1_ || this)
            {
               this.§ !6§.clear();
               if(!_loc2_)
               {
                  addr52:
                  this.§ !6§ = null;
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
         §§goto(addr52);
      }
      
      public function §+,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§ !6§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr61);
            }
            addr52:
            this.§ !6§.setActiveStatus(true);
            if(_loc1_ || this)
            {
               addr61:
               visible = true;
               if(!_loc1_)
               {
               }
               §§goto(addr70);
            }
            this.§[!;§.visible = visible;
            addr70:
            return;
         }
         §§goto(addr61);
      }
      
      public function §"!7§(param1:§9[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=Q§();
            if(_loc3_ || this)
            {
               §§goto(addr38);
            }
            §§goto(addr43);
         }
         addr38:
         this.§^t§ = param1;
         if(!_loc2_)
         {
            addr43:
            this.§+,§();
         }
      }
      
      public function §=Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§ !6§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr62:
                     this.§ !6§.setActiveStatus(false);
                     if(_loc1_ || _loc1_)
                     {
                     }
                     §§goto(addr81);
                  }
               }
               visible = false;
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr81);
               }
               addr81:
               this.§[!;§.visible = visible;
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§^t§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§ !6§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().§`Y§(param1,param2);
         }
         addr55:
         if(!(_loc4_ && param2))
         {
            §§push(this.§ !6§);
         }
      }
      
      public function getItemByName(param1:String) : §3!?§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§ !6§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr42);
                  }
               }
               return null;
            }
            §§goto(addr42);
         }
         addr42:
         return this.§ !6§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is § p§)
            {
               if(_loc5_ || param2)
               {
                  addr45:
                  (_loc3_ as § p§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §6"§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_)
         {
            if(_loc2_ is § p§)
            {
               if(_loc4_)
               {
                  §§goto(addr40);
               }
            }
            return "";
         }
         addr40:
         return (_loc2_ as § p§).§6"§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §9$§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §9$§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function § case§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"M§ = this.getItemByName(param1) as §"M§;
         if(_loc5_ || _loc3_)
         {
            if(_loc3_)
            {
               if(_loc5_ || this)
               {
                  _loc3_.§]h§(param2);
               }
            }
         }
      }
      
      public function §'f§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"M§ = this.getItemByName(param1) as §"M§;
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  return _loc2_.§]u§;
               }
            }
         }
         return "";
      }
      
      public function §,Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;%§ = null;
         for each(_loc1_ in this.§ !6§.§2x§)
         {
            if(!(_loc5_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc4_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §@K§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;%§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§ !6§.§2x§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  §§push(Boolean(_loc1_));
                  if(!(_loc4_ || _loc3_))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc5_ && _loc2_)
                     {
                        break;
                     }
                     §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Boolean(_loc1_.§const§));
                        if(_loc5_ && _loc2_)
                        {
                        }
                        break;
                     }
                     continue;
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§push(true);
                        break;
                     }
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function §<6§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!_loc6_)
         {
            _loc4_.drawRect(0,0,this.§^t§.getAppWidth(),this.§^t§.getAppHeight());
            if(!_loc6_)
            {
               addr52:
               _loc4_.endFill();
            }
            return _loc3_;
         }
         §§goto(addr52);
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ !6§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     this.§ !6§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§ !6§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().viewHeight = param1;
         }
         addr50:
         if(_loc3_ || _loc3_)
         {
            §§push(this.§ !6§);
         }
      }
      
      public function get §!j§() : §9[§
      {
         return this.§^t§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§[!;§;
      }
      
      public function get container() : §`f§
      {
         return this.§ !6§;
      }
   }
}
