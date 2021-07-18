package §,"&§
{
   import §0N§.Base64;
   import §3"#§.§<!O§;
   import §5Q§.§^!e§;
   import §;R§.§@!g§;
   import §<"8§.§6!c§;
   import §<W§.§#e§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6" § extends EventDispatcher
   {
       
      
      private var §+!e§:Boolean;
      
      private var §#[§:Stage;
      
      private var §%"&§:Boolean = false;
      
      public function §6" §(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§#[§ = param1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.init();
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
         §§goto(addr60);
      }
      
      public function §1"1§() : Boolean
      {
         return this.§%"&§;
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!c§.addCallback("pause",this.§1b§);
            do
            {
               §6!c§.addCallback("resume",this.§ Q§);
            }
            while(_loc1_);
            
         }
      }
      
      private function §1b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!this.§%"&§)
            {
               loop0:
               while(true)
               {
                  this.§%"&§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§9q§.isPaused);
                     if(_loc1_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§+!e§ = §§pop();
                     while(true)
                     {
                        dispatchEvent(new §#e§(§#e§.§;!#§));
                        continue loop0;
                        addr71:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        this.§#!V§();
                        while(true)
                        {
                           §§push(§ !g§.§;!'§);
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           §§pop().§const§();
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    addr24:
                                    return;
                                    addr60:
                                 }
                                 continue loop1;
                              }
                              addr69:
                              while(_loc1_)
                              {
                                 §§goto(addr71);
                              }
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           §§pop().§&4§();
                           §§goto(addr69);
                           §§goto(addr64);
                        }
                        addr64:
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr60);
      }
      
      private function § Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§%"&§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr121:
                  return;
               }
               addr113:
               while(true)
               {
                  this.§%"&§ = false;
                  continue loop0;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §#!V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!e§.§`?§.§,!h§ = this.§2!E§;
         }
      }
      
      private function §2!E§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§#[§.stageWidth);
         var _loc3_:int = this.§#[§.stageHeight;
         if(_loc8_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(2);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr174:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr126:
                              while(true)
                              {
                                 §§push(2);
                                 if(!(_loc8_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc7_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(!_loc7_)
                           {
                              §§push(§ !g§.stageWidth);
                              loop8:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr156:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr157:
                                    while(true)
                                    {
                                       §§push(§ !g§.stageHeight);
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
   }
}
