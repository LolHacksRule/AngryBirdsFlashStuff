package §+?§
{
   import §8!8§.§#_§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §8!8§.§<!C§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,!N§ extends Sprite
   {
       
      
      private var §08§:§4!C§;
      
      public var mMovieClip:MovieClip;
      
      public var §%!<§:§[4§;
      
      public function §,!N§(param1:§[4§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§%!<§ = param1;
               while(!(_loc3_ && param1))
               {
                  this.mMovieClip = new MovieClip();
                  while(_loc2_)
                  {
                     addChild(this.mMovieClip);
                     loop3:
                     while(!_loc3_)
                     {
                        this.mMovieClip.mouseEnabled = false;
                        while(true)
                        {
                           this.mouseEnabled = false;
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§08§ = new §4!C§(param1,null,this,param2);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[!F§();
            while(true)
            {
               this.§08§.clear();
               while(!_loc2_)
               {
                  this.§08§ = null;
                  if(!_loc2_)
                  {
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
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §'$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§08§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr83:
                     this.§08§.setActiveStatus(true);
                  }
                  while(true)
                  {
                     §§goto(addr46);
                  }
                  addr85:
               }
               while(true)
               {
                  visible = true;
                  addr46:
                  addr31:
                  do
                  {
                     if(!(_loc1_ && this))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(this.mMovieClip.visible = visible, !_loc2_);
                  
                  return;
                  §§goto(addr85);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr31);
      }
      
      public function §[!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§08§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§08§);
                     addr83:
                     while(true)
                     {
                        §§pop().setActiveStatus(false);
                        addr85:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  visible = false;
                  while(_loc2_ || _loc1_)
                  {
                     if(_loc2_)
                     {
                        this.mMovieClip.visible = visible;
                        if(_loc2_ || _loc1_)
                        {
                           return;
                           addr51:
                        }
                        continue;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr51);
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§%!<§.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §[T§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§08§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().§1!D§(param1,param2);
         }
         addr56:
         if(_loc4_ || param1)
         {
            §§push(this.§08§);
         }
      }
      
      public function getItemByName(param1:String) : §']§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§08§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr57);
                  }
               }
               return null;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§08§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ is §1!-§)
            {
               if(!(_loc4_ && param1))
               {
                  addr60:
                  (_loc3_ as §1!-§).setText(param1);
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function getText(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_ is §1!-§)
            {
               if(_loc3_)
               {
                  return (_loc2_ as §1!-§).getText();
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
         if(_loc5_ || this)
         {
            if(_loc3_ is §<d§)
            {
               if(_loc5_)
               {
                  (_loc3_ as §<d§).setComponentState(param1);
               }
            }
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §-Y§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!C§ = this.getItemByName(param1) as §<!C§;
         if(_loc4_ || param1)
         {
            if(_loc3_)
            {
               if(_loc4_ || param2)
               {
                  addr59:
                  _loc3_.§&-§(param2);
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §6!3§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!C§ = this.getItemByName(param1) as §<!C§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  return _loc2_.§0e§;
               }
            }
         }
         return "";
      }
      
      public function §<2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Object = null;
         var _loc3_:* = this.§08§.§@k§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               if(!(_loc1_ is §#_§))
               {
                  continue;
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
            }
            (_loc1_ as §#_§).close();
         }
      }
      
      public function §@O§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§08§.§@k§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               §§push(_loc1_ is §#_§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§push(Boolean((_loc1_ as §#_§).§+F§));
                        if(!_loc5_)
                        {
                           addr64:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr64);
            }
            return false;
         }
         addr78:
         true;
         return §§pop();
      }
      
      public function § 2§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         if(_loc5_ || param1)
         {
            _loc4_.drawRect(0,0,this.§%!<§.getAppWidth(),this.§%!<§.getAppHeight());
            do
            {
               _loc4_.endFill();
            }
            while(_loc6_ && _loc3_);
            
         }
         return _loc3_;
      }
      
      public function get container() : §4!C§
      {
         return this.§08§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§08§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr57:
                     this.§08§.viewWidth = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§08§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr58:
                     this.§08§.viewHeight = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
   }
}
