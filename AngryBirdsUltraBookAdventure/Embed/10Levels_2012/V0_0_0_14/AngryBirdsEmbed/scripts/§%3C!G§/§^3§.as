package §<!G§
{
   import §"!&§.§#!,§;
   import §-!F§.§&!A§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §class§.§0r§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§use §;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^3§ extends Sprite
   {
       
      
      protected var § !$§:§3C§;
      
      protected var §<!5§:MovieClip;
      
      protected var §;?§:§#!,§;
      
      public function §^3§(param1:§#!,§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            this.§;?§ = param1;
            if(_loc3_)
            {
               this.§<!5§ = new MovieClip();
               if(_loc3_)
               {
                  addChild(this.§<!5§);
               }
            }
         }
         this.§<!5§.mouseEnabled = false;
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
            this.§ !$§ = new §3C§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%Y§();
            if(_loc1_ || this)
            {
               this.§ !$§.clear();
               if(!_loc2_)
               {
                  addr52:
                  this.§ !$§ = null;
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
      
      public function §<!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§ !$§);
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
            this.§ !$§.setActiveStatus(true);
            if(_loc1_ || this)
            {
               addr61:
               visible = true;
               if(!_loc1_)
               {
               }
               §§goto(addr70);
            }
            this.§<!5§.visible = visible;
            addr70:
            return;
         }
         §§goto(addr61);
      }
      
      public function §>V§(param1:§#!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%Y§();
            if(_loc3_ || this)
            {
               §§goto(addr38);
            }
            §§goto(addr43);
         }
         addr38:
         this.§;?§ = param1;
         if(!_loc2_)
         {
            addr43:
            this.§<!&§();
         }
      }
      
      public function §%Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§ !$§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr62:
                     this.§ !$§.setActiveStatus(false);
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
               this.§<!5§.visible = visible;
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§;?§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§ !$§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().§%!+§(param1,param2);
         }
         addr55:
         if(!(_loc4_ && param2))
         {
            §§push(this.§ !$§);
         }
      }
      
      public function getItemByName(param1:String) : §&!A§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§ !$§);
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
         return this.§ !$§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is §3D§)
            {
               if(_loc5_ || param2)
               {
                  addr45:
                  (_loc3_ as §3D§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §0S§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_)
         {
            if(_loc2_ is §3D§)
            {
               if(_loc4_)
               {
                  §§goto(addr40);
               }
            }
            return "";
         }
         addr40:
         return (_loc2_ as §3D§).§0S§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §`!&§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §`!&§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §=+§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§use § = this.getItemByName(param1) as §use §;
         if(_loc5_ || _loc3_)
         {
            if(_loc3_)
            {
               if(_loc5_ || this)
               {
                  _loc3_.§>!?§(param2);
               }
            }
         }
      }
      
      public function §`!<§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§use § = this.getItemByName(param1) as §use §;
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  return _loc2_.§@!0§;
               }
            }
         }
         return "";
      }
      
      public function §!!6§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0r§ = null;
         for each(_loc1_ in this.§ !$§.§3! §)
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
      
      public function §^l§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0r§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§ !$§.§3! §;
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
                        §§push(Boolean(_loc1_.§#!#§));
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
      
      public function §4E§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!_loc6_)
         {
            _loc4_.drawRect(0,0,this.§;?§.getAppWidth(),this.§;?§.getAppHeight());
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
            §§push(this.§ !$§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     this.§ !$§.viewWidth = param1;
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
            §§push(this.§ !$§);
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
            §§push(this.§ !$§);
         }
      }
      
      public function get §`%§() : §#!,§
      {
         return this.§;?§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§<!5§;
      }
      
      public function get container() : §3C§
      {
         return this.§ !$§;
      }
   }
}
