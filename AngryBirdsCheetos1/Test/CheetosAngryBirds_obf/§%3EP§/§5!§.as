package §>P§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §'!D§.§?!h§;
   import §>M§.§#!a§;
   import §>M§.§'V§;
   import §>M§.§<6§;
   import §>M§.§]w§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!§ extends Sprite
   {
       
      
      protected var §1A§:§<6§;
      
      protected var § s§:MovieClip;
      
      protected var §;+§:§%!$§;
      
      public function §5!§(param1:§%!$§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               this.§;+§ = param1;
               while(true)
               {
                  this.§ s§ = new MovieClip();
                  loop2:
                  for(; _loc2_ || param1; if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        addChild(this.§ s§);
                        loop4:
                        while(true)
                        {
                           this.§ s§.mouseEnabled = false;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                              addr66:
                              this.mouseEnabled = false;
                              if(_loc2_)
                              {
                                 return;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr95);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1A§ = new §<6§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§#j§();
         }
         do
         {
            this.§1A§.clear();
            do
            {
               this.§1A§ = null;
            }
            while(_loc2_);
            
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
      
      public function §%>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1A§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§1A§);
                     addr73:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr71:
               }
               loop1:
               while(true)
               {
                  visible = true;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        this.§ s§.visible = visible;
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              break loop1;
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr75);
               }
               return;
               addr43:
            }
            §§goto(addr73);
         }
         §§goto(addr43);
      }
      
      public function §;!h§(param1:§%!$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#j§();
            while(true)
            {
               this.§;+§ = param1;
               while(!(_loc3_ && _loc3_))
               {
                  this.§%>§();
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §#j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1A§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr73:
                     this.§1A§.setActiveStatus(false);
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
                  visible = false;
                  while(_loc2_)
                  {
                     this.§ s§.visible = visible;
                     if(!_loc1_)
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
      
      public function listenerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§;+§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §4,§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§1A§);
            if(!(_loc3_ && param2))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr58:
                     this.§1A§.§]!g§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function getItemByName(param1:String) : §?!h§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§1A§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§1A§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(_loc3_ is §'V§)
            {
               if(_loc5_)
               {
                  (_loc3_ as §'V§).setText(param1);
               }
            }
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ is §'V§)
            {
               if(!_loc4_)
               {
                  §§goto(addr54);
               }
            }
            return "";
         }
         addr54:
         return (_loc2_ as §'V§).getText();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_)
         {
            if(_loc3_ is §0j§)
            {
               if(!_loc5_)
               {
                  addr49:
                  (_loc3_ as §0j§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §?!9§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]w§ = this.getItemByName(param1) as §]w§;
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  _loc3_.§7!'§(param2);
               }
            }
         }
      }
      
      public function §&r§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]w§ = this.getItemByName(param1) as §]w§;
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§goto(addr49);
               }
            }
            return "";
         }
         addr49:
         return _loc2_.§@![§;
      }
      
      public function §9N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#!a§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§1A§.§[!L§)
         {
            if(!(_loc4_ && _loc2_))
            {
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.close();
         }
      }
      
      public function §3!9§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#!a§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§1A§.§[!L§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(Boolean(_loc1_.§^!V§));
                              if(_loc5_ || _loc3_)
                              {
                              }
                              §§goto(addr91);
                           }
                           break;
                        }
                        §§goto(addr91);
                     }
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr91);
               }
               break;
            }
            return false;
         }
         addr91:
         true;
         return §§pop();
      }
      
      public function §1+§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_ || _loc3_)
         {
            _loc4_.drawRect(0,0,this.§;+§.getAppWidth(),this.§;+§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(_loc5_ && param2);
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1A§);
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
         if(_loc3_)
         {
            §§push(this.§1A§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§1A§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr58:
                     this.§1A§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function get §2!$§() : §%!$§
      {
         return this.§;+§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§ s§;
      }
      
      public function get container() : §<6§
      {
         return this.§1A§;
      }
   }
}
