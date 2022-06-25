package §0w§
{
   import §4C§.§'!D§;
   import §4C§.§->§;
   import §4C§.§1!=§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import §`!0§.§[4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0#§ extends Sprite
   {
       
      
      protected var §46§:§1!=§;
      
      protected var §6!7§:MovieClip;
      
      protected var §+%§:§>3§;
      
      public function §0#§(param1:§>3§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            this.§+%§ = param1;
            if(_loc3_)
            {
               this.§6!7§ = new MovieClip();
               if(_loc3_)
               {
                  addChild(this.§6!7§);
               }
            }
         }
         this.§6!7§.mouseEnabled = false;
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
            this.§46§ = new §1!=§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2!"§();
            if(_loc1_ || this)
            {
               this.§46§.clear();
               if(!_loc2_)
               {
                  addr52:
                  this.§46§ = null;
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
      
      public function §@`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§46§);
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
            this.§46§.setActiveStatus(true);
            if(_loc1_ || this)
            {
               addr61:
               visible = true;
               if(!_loc1_)
               {
               }
               §§goto(addr70);
            }
            this.§6!7§.visible = visible;
            addr70:
            return;
         }
         §§goto(addr61);
      }
      
      public function §@9§(param1:§>3§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!"§();
            if(_loc3_ || this)
            {
               §§goto(addr38);
            }
            §§goto(addr43);
         }
         addr38:
         this.§+%§ = param1;
         if(!_loc2_)
         {
            addr43:
            this.§@`§();
         }
      }
      
      public function §2!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§46§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr62:
                     this.§46§.setActiveStatus(false);
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
               this.§6!7§.visible = visible;
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§+%§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§46§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().§`X§(param1,param2);
         }
         addr55:
         if(!(_loc4_ && param2))
         {
            §§push(this.§46§);
         }
      }
      
      public function getItemByName(param1:String) : §4Y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§46§);
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
         return this.§46§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is §<k§)
            {
               if(_loc5_ || param2)
               {
                  addr45:
                  (_loc3_ as §<k§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §<!A§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_)
         {
            if(_loc2_ is §<k§)
            {
               if(_loc4_)
               {
                  §§goto(addr40);
               }
            }
            return "";
         }
         addr40:
         return (_loc2_ as §<k§).§<!A§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §[4§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §[4§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §&E§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§->§ = this.getItemByName(param1) as §->§;
         if(_loc5_ || _loc3_)
         {
            if(_loc3_)
            {
               if(_loc5_ || this)
               {
                  _loc3_.§1!#§(param2);
               }
            }
         }
      }
      
      public function §8k§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§->§ = this.getItemByName(param1) as §->§;
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  return _loc2_.§90§;
               }
            }
         }
         return "";
      }
      
      public function §3!-§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'!D§ = null;
         for each(_loc1_ in this.§46§.§@_§)
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
      
      public function §1E§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'!D§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§46§.§@_§;
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
                        §§push(Boolean(_loc1_.§2!-§));
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
      
      public function §&g§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!_loc6_)
         {
            _loc4_.drawRect(0,0,this.§+%§.getAppWidth(),this.§+%§.getAppHeight());
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
            §§push(this.§46§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     this.§46§.viewWidth = param1;
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
            §§push(this.§46§);
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
            §§push(this.§46§);
         }
      }
      
      public function get §'8§() : §>3§
      {
         return this.§+%§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§6!7§;
      }
      
      public function get container() : §1!=§
      {
         return this.§46§;
      }
   }
}
