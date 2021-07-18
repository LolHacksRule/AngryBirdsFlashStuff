package §1"2§
{
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§"S§;
   import §'p§.§+!,§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §5"-§.§5y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'s§ extends Sprite
   {
       
      
      protected var §+!e§:§`!T§;
      
      protected var §["-§:MovieClip;
      
      protected var §?!T§:§5y§;
      
      public function §'s§(param1:§5y§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§?!T§ = param1;
               addr95:
               while(true)
               {
                  this.§["-§ = new MovieClip();
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+!e§ = new §`!T§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§['§();
         }
         do
         {
            this.§+!e§.clear();
            do
            {
               this.§+!e§ = null;
            }
            while(_loc2_ && this);
            
         }
         while(!_loc1_);
         
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!_loc2_)
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
      
      public function §&o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§+!e§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr73:
                     this.§+!e§.setActiveStatus(true);
                     addr75:
                     while(true)
                     {
                     }
                     addr75:
                  }
                  §§goto(addr75);
               }
               while(true)
               {
                  visible = true;
                  while(_loc2_)
                  {
                     this.§["-§.visible = visible;
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §[j§(param1:§5y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§['§();
            while(true)
            {
               this.§?!T§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§&o§();
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §['§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§+!e§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr83:
                     this.§+!e§.setActiveStatus(false);
                     addr85:
                     while(true)
                     {
                     }
                     addr85:
                  }
                  §§goto(addr85);
               }
               while(true)
               {
                  visible = false;
                  do
                  {
                     this.§["-§.visible = visible;
                  }
                  while(_loc1_ && this);
                  
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§?!T§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§+!e§);
            if(_loc4_ || param1)
            {
               if(!§§pop())
               {
               }
               §§goto(addr66);
            }
            §§pop().§ F§(param1,param2);
         }
         addr66:
         if(!(_loc3_ && param1))
         {
            §§push(this.§+!e§);
         }
      }
      
      public function getItemByName(param1:String) : §-!2§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§+!e§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§+!e§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(_loc3_ is §`!<§)
            {
               if(!(_loc4_ && param1))
               {
                  addr55:
                  (_loc3_ as §`!<§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §2! §(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc3_ || this)
         {
            if(_loc2_ is §`!<§)
            {
               if(_loc3_ || _loc2_)
               {
                  return (_loc2_ as §`!<§).§2! §();
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
         if(!_loc4_)
         {
            if(_loc3_ is §9!!§)
            {
               if(_loc5_ || _loc3_)
               {
                  addr55:
                  (_loc3_ as §9!!§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §'!=§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+!,§ = this.getItemByName(param1) as §+!,§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(_loc4_ || param1)
               {
                  addr54:
                  _loc3_.§%D§(param2);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §7u§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+!,§ = this.getItemByName(param1) as §+!,§;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr60);
               }
            }
            return "";
         }
         addr60:
         return _loc2_.§0y§;
      }
      
      public function §"§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"S§ = null;
         for each(_loc1_ in this.§+!e§.§"!_§)
         {
            if(_loc4_)
            {
               if(_loc1_)
               {
                  if(!_loc5_)
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §'!d§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§"S§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§+!e§.§"!_§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc3_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr59:
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           addr67:
                           §§push(Boolean(_loc1_.§-j§));
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                           addr77:
                           if(§§pop())
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(true);
                                 break;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr59);
               }
               §§goto(addr67);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §8"-§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_)
         {
            _loc4_.drawRect(0,0,this.§?!T§.getAppWidth(),this.§?!T§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(!_loc5_);
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§+!e§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().viewWidth = param1;
         }
         addr50:
         if(!_loc2_)
         {
            §§push(this.§+!e§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+!e§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr47:
                     this.§+!e§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function get §'!n§() : §5y§
      {
         return this.§?!T§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§["-§;
      }
      
      public function get container() : §`!T§
      {
         return this.§+!e§;
      }
   }
}
