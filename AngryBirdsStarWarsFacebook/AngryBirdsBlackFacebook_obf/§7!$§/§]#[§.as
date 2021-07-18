package §7!$§
{
   import § §.§4#`§;
   import §+D§.§ #^§;
   import §+D§.§"-§;
   import §+D§.§6!D§;
   import §+D§.§6"T§;
   import §+D§.§?"o§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]#X§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]#[§ extends Sprite
   {
       
      
      protected var §^c§:§ #^§;
      
      protected var §]"S§:MovieClip;
      
      protected var §]v§:§4#`§;
      
      public function §]#[§(param1:§4#`§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§]v§ = param1;
               loop1:
               while(!(_loc2_ && this))
               {
                  this.§]"S§ = new MovieClip();
                  loop2:
                  while(true)
                  {
                     addChild(this.§]"S§);
                     while(true)
                     {
                        this.§]"S§.mouseEnabled = false;
                        loop4:
                        while(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.mouseEnabled = false;
                                 if(!(_loc2_ && param1))
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              return;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§^c§ = §"-§.§=#T§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§8,§();
         }
         do
         {
            this.§^c§.clear();
            do
            {
               this.§^c§ = null;
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!_loc1_)
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
      
      public function §52§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^c§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§^c§);
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
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           this.§]"S§.visible = visible;
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        addr59:
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr77);
         }
         §§goto(addr59);
      }
      
      public function §6!,§(param1:§4#`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8,§();
            while(true)
            {
               this.§]v§ = param1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§52§();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §8,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§^c§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr82:
                     this.§^c§.setActiveStatus(false);
                     addr84:
                     while(true)
                     {
                     }
                     addr84:
                  }
                  §§goto(addr84);
               }
               while(true)
               {
                  visible = false;
                  while(_loc1_)
                  {
                     this.§]"S§.visible = visible;
                     if(!(_loc2_ && this))
                     {
                        return;
                     }
                  }
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr82);
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§]v§.§=!q§(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§^c§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr57:
                     this.§^c§.§'P§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function getItemByName(param1:String) : §]#X§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§^c§);
            if(_loc2_)
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
         return this.§^c§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_)
            {
               while(_loc3_ is §6!D§)
               {
                  do
                  {
                     (_loc3_ as §6!D§).setText(param1);
                  }
                  while(_loc5_);
                  
                  if(_loc5_ && this)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        return;
                     }
                     addr83:
                     throw new Error("Could not find textfield \'" + param2 + "\' in view \'" + name + "\'.");
                  }
               }
               throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
            }
         }
         §§goto(addr83);
      }
      
      public function §+!E§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc4_)
         {
            if(_loc2_ is §6!D§)
            {
               if(_loc4_)
               {
                  §§goto(addr50);
               }
            }
            return "";
         }
         addr50:
         return (_loc2_ as §6!D§).§+!E§();
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(_loc3_ is §1"z§)
            {
               if(!(_loc4_ && this))
               {
                  (_loc3_ as §1"z§).setComponentState(param1);
               }
            }
         }
      }
      
      public function §!"S§(param1:String) : Array
      {
         return null;
      }
      
      public function §^#!§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?"o§ = this.getItemByName(param1) as §?"o§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr54:
                  _loc3_.§-c§(param2);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §,!L§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?"o§ = this.getItemByName(param1) as §?"o§;
         if(!(_loc3_ && param1))
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  return _loc2_.§2",§;
               }
            }
         }
         return "";
      }
      
      public function §9"@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§6"T§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§^c§.§%"u§)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(!_loc1_)
               {
               }
            }
         }
      }
      
      public function §]g§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§6"T§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§^c§.§%"u§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  §§push(Boolean(_loc1_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              §§push(Boolean(_loc1_.§9C§));
                              if(_loc4_ || _loc1_)
                              {
                                 addr71:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           §§push(true);
                           break;
                        }
                     }
                     §§goto(addr71);
                  }
                  break;
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function §8!e§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc6_ || param2)
         {
            _loc4_.drawRect(0,0,this.§]v§.getAppWidth(),this.§]v§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(!_loc6_);
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§^c§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr52:
                     this.§^c§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§^c§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().viewHeight = param1;
         }
         addr50:
         if(_loc3_)
         {
            §§push(this.§^c§);
         }
      }
      
      public function get §["b§() : §4#`§
      {
         return this.§]v§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§]"S§;
      }
      
      public function get container() : § #^§
      {
         return this.§^c§;
      }
   }
}
