package §7!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §0"$§.§"!a§;
   import §0"$§.§""'§;
   import §0"$§.§+!@§;
   import §0"$§.§7!a§;
   import §?z§.§4!C§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2W§ extends Sprite
   {
       
      
      protected var §@'§:§"!a§;
      
      protected var §^!j§:MovieClip;
      
      protected var §9!N§:§4!C§;
      
      public function §2W§(param1:§4!C§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§9!N§ = param1;
               addr105:
               while(true)
               {
                  this.§^!j§ = new MovieClip();
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§@'§ = new §"!a§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§8"-§();
         }
         do
         {
            this.§@'§.clear();
            do
            {
               this.§@'§ = null;
            }
            while(_loc1_ && _loc1_);
            
         }
         while(_loc1_ && this);
         
         while(true)
         {
            if(numChildren <= 0)
            {
               if(_loc2_)
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
      
      public function §+!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@'§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§@'§);
                     addr77:
                     while(true)
                     {
                        §§pop().setActiveStatus(true);
                        addr79:
                        while(true)
                        {
                        }
                     }
                  }
                  addr75:
               }
               while(true)
               {
                  visible = true;
                  §§goto(addr59);
               }
            }
            §§goto(addr77);
         }
         addr59:
         while(true)
         {
            this.§^!j§.visible = visible;
            if(_loc2_ && _loc1_)
            {
               continue;
            }
            if(!_loc1_)
            {
               continue loop1;
            }
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr75);
         }
      }
      
      public function §2!Z§(param1:§4!C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§8"-§();
            while(true)
            {
               this.§9!N§ = param1;
               while(_loc3_ || _loc2_)
               {
                  this.§+!+§();
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §8"-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§@'§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr83:
                     this.§@'§.setActiveStatus(false);
                  }
                  while(true)
                  {
                     §§goto(addr58);
                  }
                  addr85:
               }
               while(true)
               {
                  visible = false;
                  addr58:
                  while(true)
                  {
                     this.§^!j§.visible = visible;
                     if(_loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  return;
                  §§goto(addr85);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr58);
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§9!N§.§,n§(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§@'§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr53:
                     this.§@'§.§"!"§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function getItemByName(param1:String) : §;[§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@'§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§@'§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(_loc3_)
            {
               while(true)
               {
                  if(!(_loc3_ is §+!@§))
                  {
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     loop1:
                     while(_loc5_)
                     {
                        if(!(_loc5_ || param2))
                        {
                           throw new Error("Could not find textfield \'" + param2 + "\' in view \'" + name + "\'.");
                        }
                        addr89:
                        while(true)
                        {
                           (_loc3_ as §+!@§).setText(param1);
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr29);
               }
               §§goto(addr65);
            }
            §§goto(addr89);
         }
         addr65:
         throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_)
         {
            if(_loc2_ is §+!@§)
            {
               if(_loc4_)
               {
                  return (_loc2_ as §+!@§).getText();
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
         if(!(_loc5_ && param1))
         {
            if(_loc3_ is §%J§)
            {
               if(_loc4_)
               {
                  addr54:
                  (_loc3_ as §%J§).setComponentState(param1);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §`O§(param1:String) : Array
      {
         return null;
      }
      
      public function §72§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!a§ = this.getItemByName(param1) as §7!a§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(_loc4_ || param2)
               {
                  addr54:
                  _loc3_.§=! §(param2);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §8!l§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7!a§ = this.getItemByName(param1) as §7!a§;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  return _loc2_.§!g§;
               }
            }
         }
         return "";
      }
      
      public function §=!+§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§""'§ = null;
         for each(_loc1_ in this.§@'§.§<C§)
         {
            if(_loc5_ || _loc1_)
            {
               if(!_loc1_)
               {
               }
            }
         }
      }
      
      public function §;6§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§""'§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§@'§.§<C§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || this)
               {
                  §§push(Boolean(_loc1_));
                  if(!(_loc4_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_ || _loc2_)
                           {
                              §§push(Boolean(_loc1_.§]"'§));
                              if(_loc5_)
                              {
                                 addr77:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ || _loc1_))
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
                     §§goto(addr77);
                  }
                  break;
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function §1!z§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_)
         {
            _loc4_.drawRect(0,0,this.§9!N§.getAppWidth(),this.§9!N§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(_loc5_);
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§@'§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr63:
                     this.§@'§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§@'§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr53:
                     this.§@'§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function get § V§() : §4!C§
      {
         return this.§9!N§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§^!j§;
      }
      
      public function get container() : §"!a§
      {
         return this.§@'§;
      }
   }
}
