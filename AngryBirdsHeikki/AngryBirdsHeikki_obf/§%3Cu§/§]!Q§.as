package §<u§
{
   import §'!N§.§#!V§;
   import §'!N§.§,2§;
   import §'!N§.§2O§;
   import §'!N§.§[!%§;
   import §-!"§.§=p§;
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]!Q§ extends Sprite
   {
       
      
      protected var §6!"§:§2O§;
      
      protected var §,n§:MovieClip;
      
      protected var §2!'§:§=p§;
      
      public function §]!Q§(param1:§=p§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§2!'§ = param1;
               loop1:
               while(true)
               {
                  this.§,n§ = new MovieClip();
                  while(true)
                  {
                     addChild(this.§,n§);
                     addr55:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     this.mouseEnabled = false;
                     addr64:
                     if(_loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           if(_loc2_ && this)
                           {
                              while(true)
                              {
                                 this.§,n§.mouseEnabled = false;
                                 continue loop4;
                              }
                              return;
                              addr32:
                              addr70:
                           }
                           §§goto(addr55);
                        }
                        continue;
                     }
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§goto(addr32);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§6!"§ = new §2O§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@m§();
            while(true)
            {
               this.§6!"§.clear();
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§6!"§ = null;
            if(_loc1_ || _loc1_)
            {
               if(_loc1_)
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
      
      public function §6,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§6!"§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr77:
                     this.§6!"§.setActiveStatus(true);
                  }
                  while(true)
                  {
                  }
                  addr79:
               }
               loop1:
               while(true)
               {
                  visible = true;
                  do
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  while(this.§,n§.visible = visible, _loc2_);
                  
                  §§goto(addr30);
               }
            }
            §§goto(addr77);
         }
         addr30:
      }
      
      public function changeState(param1:§=p§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@m§();
         }
         do
         {
            this.§2!'§ = param1;
            do
            {
               this.§6,§();
            }
            while(_loc2_);
            
         }
         while(_loc2_ && param1);
         
      }
      
      public function §@m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§6!"§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr77:
                     this.§6!"§.setActiveStatus(false);
                  }
                  while(true)
                  {
                     §§goto(addr53);
                  }
               }
               addr53:
               while(true)
               {
                  visible = false;
                  do
                  {
                     this.§,n§.visible = visible;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§2!'§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function § '§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§6!"§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr52:
                     this.§6!"§.§`x§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function getItemByName(param1:String) : §&-§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§6!"§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return this.§6!"§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(_loc3_ is §[!%§)
            {
               if(!_loc4_)
               {
                  addr50:
                  (_loc3_ as §[!%§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ is §[!%§)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr59);
               }
            }
            return "";
         }
         addr59:
         return (_loc2_ as §[!%§).getText();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ is §4!Y§)
            {
               if(!(_loc4_ && param2))
               {
                  (_loc3_ as §4!Y§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §"!@§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,2§ = this.getItemByName(param1) as §,2§;
         if(!(_loc4_ && param2))
         {
            if(_loc3_)
            {
               if(!(_loc4_ && param1))
               {
                  _loc3_.§%v§(param2);
               }
            }
         }
      }
      
      public function §]!H§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,2§ = this.getItemByName(param1) as §,2§;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  return _loc2_.§]!c§;
               }
            }
         }
         return "";
      }
      
      public function §-!F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!V§ = null;
         var _loc3_:* = this.§6!"§.§],§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc1_)
            {
               if(_loc1_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc1_.close();
                  }
               }
            }
         }
      }
      
      public function §`!E§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#!V§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§6!"§.§],§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ && this))
               {
                  §§push(Boolean(_loc1_));
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           addr62:
                           §§push(Boolean(_loc1_.§ !9§));
                           if(_loc4_)
                           {
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(true);
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr62);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §#!3§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_ || param1)
         {
            _loc4_.drawRect(0,0,this.§2!'§.§+C§(),this.§2!'§.§6!K§());
            do
            {
               _loc4_.endFill();
            }
            while(!(_loc6_ || this));
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6!"§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().viewWidth = param1;
         }
         addr55:
         if(_loc3_ || param1)
         {
            §§push(this.§6!"§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§6!"§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr52:
                     this.§6!"§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function get §1!B§() : §=p§
      {
         return this.§2!'§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§,n§;
      }
      
      public function get container() : §2O§
      {
         return this.§6!"§;
      }
   }
}
