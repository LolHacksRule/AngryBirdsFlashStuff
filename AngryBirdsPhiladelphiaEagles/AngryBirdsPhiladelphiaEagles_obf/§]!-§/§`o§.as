package §]!-§
{
   import §"U§.§"]§;
   import §"U§.§36§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §'!O§.§'!#§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`o§ extends Sprite
   {
       
      
      protected var §"F§:§[Q§;
      
      protected var §"!G§:MovieClip;
      
      protected var §`B§:§'!#§;
      
      public function §`o§(param1:§'!#§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         do
         {
            this.§`B§ = param1;
            this.§"!G§ = new MovieClip();
         }
         while(!(_loc2_ || _loc2_));
         
         addChild(this.§"!G§);
         this.§"!G§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§"F§ = new §[Q§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!q§();
            while(true)
            {
               this.§"F§.clear();
               while(_loc2_)
               {
                  this.§"F§ = null;
                  if(_loc2_)
                  {
                     while(true)
                     {
                        if(numChildren <= 0)
                        {
                           if(!(_loc1_ && _loc1_))
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
                     addr67:
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §[C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§"F§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr82:
                     this.§"F§.setActiveStatus(true);
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
                  visible = true;
                  while(!(_loc2_ && _loc1_))
                  {
                     this.§"!G§.visible = visible;
                     if(!_loc2_)
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
      
      public function §>3§(param1:§'!#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!q§();
            while(true)
            {
               this.§`B§ = param1;
               while(!(_loc3_ && param1))
               {
                  this.§[C§();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
      
      public function §!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§"F§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr73:
                     this.§"F§.setActiveStatus(false);
                  }
                  while(true)
                  {
                     §§goto(addr58);
                  }
                  addr75:
               }
               while(true)
               {
                  visible = false;
                  addr58:
                  while(true)
                  {
                     this.§"!G§.visible = visible;
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  return;
                  §§goto(addr75);
               }
            }
            §§goto(addr73);
         }
         §§goto(addr58);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§`B§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§"F§);
            if(!(_loc4_ && param2))
            {
               if(§§pop())
               {
                  if(_loc3_ || param2)
                  {
                     addr47:
                     this.§"F§.§>V§(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function getItemByName(param1:String) : §var §
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§"F§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§"F§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop().getItemByName(param1);
         }
         addr45:
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc4_ || param1)
         {
            if(_loc3_ is §@4§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §@4§).setText(param1);
               }
            }
         }
      }
      
      public function §null §(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(!_loc4_)
         {
            if(_loc2_ is §@4§)
            {
               if(!_loc4_)
               {
                  return (_loc2_ as §@4§).§null §();
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
         if(_loc4_ || param1)
         {
            if(_loc3_ is §@V§)
            {
               if(_loc4_)
               {
                  (_loc3_ as §@V§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4!J§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§"]§ = this.getItemByName(param1) as §"]§;
         if(_loc4_ || param2)
         {
            if(_loc3_)
            {
               if(_loc4_ || _loc3_)
               {
                  addr49:
                  _loc3_.§false§(param2);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §0#§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"]§ = this.getItemByName(param1) as §"]§;
         if(_loc3_ || this)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  return _loc2_.§!Q§;
               }
            }
         }
         return "";
      }
      
      public function §!h§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§36§ = null;
         for each(_loc1_ in this.§"F§.§`!O§)
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
      
      public function §&T§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§36§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§"F§.§`!O§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
               §§push(Boolean(_loc1_));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ || _loc1_))
                        {
                           continue;
                        }
                        §§push(Boolean(_loc1_.§9'§));
                        if(!_loc4_)
                        {
                           addr82:
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr82);
            }
            return false;
         }
         addr91:
         true;
         return §§pop();
      }
      
      public function §2!3§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(!(_loc6_ && this))
         {
            _loc4_.drawRect(0,0,this.§`B§.getAppWidth(),this.§`B§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(_loc6_);
            
         }
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§"F§);
            if(_loc2_ || param1)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().viewWidth = param1;
         }
         addr49:
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§"F§);
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§"F§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr47:
                     this.§"F§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function get §+G§() : §'!#§
      {
         return this.§`B§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§"!G§;
      }
      
      public function get container() : §[Q§
      {
         return this.§"F§;
      }
   }
}
