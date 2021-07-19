package §1`§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§9!e§;
   import §2u§.§]!>§;
   import §37§.§9!c§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §9%§ extends Sprite
   {
       
      
      protected var §29§:§,6§;
      
      protected var §5!x§:MovieClip;
      
      protected var §^!]§:§9!c§;
      
      public function §9%§(param1:§9!c§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!]§ = param1;
            loop1:
            while(true)
            {
               this.§5!x§ = new MovieClip();
               loop2:
               do
               {
                  addChild(this.§5!x§);
                  loop3:
                  while(!_loc2_)
                  {
                     this.§5!x§.mouseEnabled = false;
                     while(_loc3_)
                     {
                        this.mouseEnabled = false;
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§29§ = new §,6§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§ !o§();
            while(true)
            {
               this.§29§.clear();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§29§ = null;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     if(numChildren <= 0)
                     {
                        if(_loc1_ || _loc2_)
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
         §§goto(addr83);
      }
      
      public function §`!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§29§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr77:
                     this.§29§.setActiveStatus(true);
                  }
                  while(true)
                  {
                     §§goto(addr53);
                  }
               }
               addr53:
               while(true)
               {
                  visible = true;
                  do
                  {
                     this.§5!x§.visible = visible;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(_loc1_ || this)
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
      
      public function §@w§(param1:§9!c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !o§();
            while(true)
            {
               this.§^!]§ = param1;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§`!J§();
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function § !o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§29§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§29§);
                     addr82:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr84:
                        while(true)
                        {
                        }
                     }
                     addr45:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     return;
                     addr52:
                  }
               }
               while(true)
               {
                  visible = false;
                  while(_loc1_)
                  {
                     this.§5!x§.visible = visible;
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr84);
               }
               §§goto(addr52);
            }
            §§goto(addr82);
         }
         §§goto(addr84);
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§^!]§.§<8§(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§29§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().§"!2§(param1,param2);
         }
         addr56:
         if(!_loc3_)
         {
            §§push(this.§29§);
         }
      }
      
      public function getItemByName(param1:String) : §<!7§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§29§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§29§);
                  }
                  else
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr61);
            }
            return §§pop().getItemByName(param1);
         }
         addr61:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc4_ && this))
         {
            if(!_loc3_)
            {
               if(_loc5_ || _loc3_)
               {
                  throw new Error("Could not find textfield \'" + param2 + "\' in view \'" + name + "\'.");
               }
               addr111:
               while(true)
               {
               }
               addr111:
            }
            while(_loc3_ is §7!&§)
            {
               do
               {
                  (_loc3_ as §7!&§).setText(param1);
               }
               while(_loc4_);
               
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(_loc5_)
               {
                  return;
               }
               §§goto(addr111);
            }
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         §§goto(addr111);
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc3_)
         {
            if(_loc2_ is §7!&§)
            {
               if(!_loc4_)
               {
                  §§goto(addr49);
               }
            }
            return "";
         }
         addr49:
         return (_loc2_ as §7!&§).getText();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc5_ && param1))
         {
            if(_loc3_ is §-!g§)
            {
               if(_loc4_ || param1)
               {
                  (_loc3_ as §-!g§).setComponentState(param1);
               }
            }
         }
      }
      
      public function §?w§(param1:String) : Array
      {
         return null;
      }
      
      public function §;!u§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]!>§ = this.getItemByName(param1) as §]!>§;
         if(_loc5_)
         {
            if(_loc3_)
            {
               if(_loc5_ || _loc3_)
               {
                  _loc3_.§<%§(param2);
               }
            }
         }
      }
      
      public function §0"4§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!>§ = this.getItemByName(param1) as §]!>§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return _loc2_.§6b§;
               }
            }
         }
         return "";
      }
      
      public function §5u§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!e§ = null;
         for each(_loc1_ in this.§29§.§,_§)
         {
            if(!_loc4_)
            {
               if(!_loc1_)
               {
               }
            }
         }
      }
      
      public function §<D§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!e§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§29§.§,_§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc1_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           addr69:
                           §§pop();
                           if(!(_loc4_ && this))
                           {
                              addr77:
                              §§push(Boolean(_loc1_.§!"4§));
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr82:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    addr100:
                                    §§push(true);
                                    break;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr69);
               }
               §§goto(addr77);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §%1§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_)
         {
            _loc4_.drawRect(0,0,this.§^!]§.getAppWidth(),this.§^!]§.getAppHeight());
         }
         do
         {
            _loc4_.endFill();
         }
         while(_loc6_ && this);
         
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§29§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr48:
                     this.§29§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§29§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr58:
                     this.§29§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function get §7"4§() : §9!c§
      {
         return this.§^!]§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§5!x§;
      }
      
      public function get container() : §,6§
      {
         return this.§29§;
      }
   }
}
