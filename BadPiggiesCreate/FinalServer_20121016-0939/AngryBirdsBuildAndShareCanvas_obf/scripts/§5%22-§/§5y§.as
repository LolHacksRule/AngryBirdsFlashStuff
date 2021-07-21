package §5"-§
{
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §5y§
   {
      
      public static const § !a§:int = 60;
      
      public static const §[D§:String = "dummyState";
      
      public static const §&!'§:int = 0;
      
      public static const §1!3§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §;" §:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § !a§ = 60;
            while(true)
            {
               §[D§ = "dummyState";
               while(_loc2_)
               {
                  if(!(_loc1_ && §5y§))
                  {
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §&!'§ = 0;
            loop3:
            while(true)
            {
               §1!3§ = 1;
               loop4:
               do
               {
                  STATE_STATUS_RUNNING = 2;
                  while(true)
                  {
                     STATE_STATUS_COMPLETED = 3;
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           §;" § = null;
                           if(_loc2_)
                           {
                              continue loop4;
                           }
                           continue;
                           continue;
                        }
                        continue loop3;
                     }
                  }
               }
               while(_loc1_ && §5y§);
               
               §§goto(addr37);
            }
         }
      }
      
      public var §?!d§:Boolean = false;
      
      public var §?C§:Boolean = false;
      
      public var mName:String;
      
      public var §&!z§:Boolean = false;
      
      public var § z§:Boolean = false;
      
      public var §?E§:§'s§;
      
      public var §>e§:Array;
      
      public var mNextState:String = "";
      
      public var §!&§:Sprite = null;
      
      public var §'!e§:§`$§ = null;
      
      public function §5y§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
         }
         while(true)
         {
            this.mName = param2;
            loop1:
            while(true)
            {
               this.§>e§ = new Array();
               loop2:
               while(true)
               {
                  this.§!&§ = new Sprite();
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!param1)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  addr25:
                  return;
               }
            }
         }
      }
      
      public static function §"!>§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§;" §)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr48);
               }
            }
            return null;
         }
         addr48:
         return §;" §[param1];
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?!d§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'s§ = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.§?!d§)
            {
               if(_loc4_)
               {
                  this.init();
               }
               while(true)
               {
                  addr40:
                  if(!(_loc5_ && _loc3_))
                  {
                     if(false)
                     {
                        while(true)
                        {
                           §§push(this.§?E§);
                           while(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§!&§.addChild(this.§?E§);
                                 }
                                 addr55:
                              }
                              while(true)
                              {
                                 §§push(this.§?E§);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§pop().§&o§();
                                 if(!(_loc4_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr40);
                              }
                           }
                        }
                        addr49:
                     }
                     var _loc2_:int = 0;
                     for each(_loc1_ in this.§>e§)
                     {
                        if(!_loc5_)
                        {
                           this.§!&§.addChild(_loc1_);
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        _loc1_.§['§();
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        this.mNextState = "";
                     }
                     do
                     {
                        this.§?C§ = true;
                     }
                     while(!_loc4_);
                     
                     return;
                  }
               }
            }
            §§goto(addr49);
         }
         §§goto(addr55);
      }
      
      public function §?!e§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'s§ = null;
         if(!_loc5_)
         {
            §§push(this.§?E§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr30:
                     this.§?E§.§['§();
                     addr28:
                     if(_loc5_)
                     {
                     }
                     addr38:
                     var _loc3_:* = this.§>e§;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!_loc5_)
                        {
                           _loc1_.§['§();
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        this.§!&§.removeChild(_loc1_);
                     }
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.§?C§);
                        if(!(_loc5_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 this.§?C§ = false;
                                 while(!_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§ z§);
                                       if(_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   addr128:
                                                   return;
                                                   addr156:
                                                }
                                                this.cleanup();
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          return;
                                       }
                                       addr153:
                                       addr153:
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       §§goto(addr128);
                                    }
                                    else
                                    {
                                       addr151:
                                       §§goto(addr153);
                                       §§push(this.§ z§);
                                    }
                                    §§goto(addr153);
                                 }
                                 this.cleanup();
                                 §§goto(addr156);
                              }
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr130);
                  }
                  this.§!&§.removeChild(this.§?E§);
               }
               §§goto(addr38);
            }
            §§goto(addr30);
         }
         §§goto(addr28);
      }
      
      public function §9!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ z§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§?!d§)
            {
               loop0:
               do
               {
                  §§push(this.§?E§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§?E§);
                           addr127:
                           while(true)
                           {
                              §§pop().clear();
                              do
                              {
                                 this.§?E§ = null;
                              }
                              while(!(_loc2_ || this));
                              
                              if(_loc2_ || this)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr76:
                        loop4:
                        while(true)
                        {
                           §§push(this.§>e§);
                           if(_loc2_)
                           {
                              if(§§pop().length <= 0)
                              {
                                 do
                                 {
                                    if(this.§?C§)
                                    {
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          this.deActivate();
                                          while(true)
                                          {
                                          }
                                       }
                                       continue loop4;
                                       addr56:
                                    }
                                    while(true)
                                    {
                                       this.§?!d§ = false;
                                       if(!_loc1_)
                                       {
                                          if(!(_loc1_ && this))
                                          {
                                             break;
                                          }
                                          §§goto(addr56);
                                       }
                                       §§goto(addr75);
                                    }
                                 }
                                 while(_loc1_ && _loc1_);
                                 
                                 return;
                              }
                              §§push(this.§>e§);
                           }
                           (§§pop().pop() as §'s§).clear();
                        }
                     }
                  }
                  §§goto(addr127);
               }
               while(!_loc2_);
               
               if(!_loc1_)
               {
                  §§goto(addr76);
               }
            }
         }
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?!d§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §9!P§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
                  §§push(§&!'§);
                  break;
               }
               while(true)
               {
                  §§push(this.§?C§);
                  if(_loc3_ || this)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           §9!P§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
                        }
                        §§push(§1!3§);
                        break;
                        addr95:
                     }
                     §§push(STATE_STATUS_RUNNING);
                     if(_loc3_ || param1)
                     {
                        if(!(_loc2_ && param1))
                        {
                           return §§pop();
                        }
                        break loop0;
                     }
                     break;
                  }
                  continue loop0;
               }
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr95);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§&!z§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function §56§(param1:§'s§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>e§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§!&§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!&§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§!&§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'!e§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§'!e§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().getAppWidth();
         }
         addr55:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'!e§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr52);
                  }
               }
               return 0;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§'!e§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§?E§);
            loop0:
            for(; §§pop(); if(!(_loc4_ || this))
            {
               continue;
            },§§push(param2),if(!_loc3_)
            {
               §§pop().viewHeight = §§pop();
               if(!_loc4_)
               {
                  §§goto(addr82);
               }
               addr62:
               break;
            },§§goto(addr81))
            {
               if(!_loc3_)
               {
                  §§push(this.§?E§);
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     addr81:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        continue loop1;
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  §§push(this.§?E§);
                  if(_loc4_ || _loc3_)
                  {
                     continue loop0;
                  }
                  §§goto(addr80);
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function getTargetFrameRate() : int
      {
         return § !a§;
      }
   }
}
