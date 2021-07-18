package §1" §
{
   import §"_§.§!"8§;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §1!,§ extends EventDispatcher implements §4!x§
   {
       
      
      private var §^!P§:Vector.<String>;
      
      private var §9J§:§#!j§;
      
      private var §5!7§:String;
      
      public function §1!,§(param1:§#!j§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            do
            {
               this.§9J§ = param1;
            }
            while(_loc2_);
            
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9J§);
            while(true)
            {
               §§push(§§pop().§%8§);
               addr118:
               while(true)
               {
                  §§push(§!"8§.§4]§);
                  addr120:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.onPhysicsEnabled,false,1);
                  }
               }
            }
            addr117:
         }
         loop3:
         while(true)
         {
            §§push(this.§9J§);
            loop4:
            while(true)
            {
               §§push(§§pop().§%8§);
               if(_loc2_)
               {
                  break;
               }
               §§push(§!"8§.§3!?§);
               if(!(_loc2_ && this))
               {
                  §§pop().addEventListener(§§pop(),this.§@<§,false,1);
                  while(_loc1_)
                  {
                     §§push(this.§9J§);
                     continue loop4;
                  }
                  continue loop3;
                  addr102:
               }
               §§goto(addr120);
            }
            §§goto(addr118);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§5!7§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§79§(this.§5!7§);
                  do
                  {
                     this.§5!7§ = null;
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  addr70:
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function onPlay(param1:§!"8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§5!7§ = this.§1!E§(false);
         }
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!E§();
         }
      }
      
      private function §@<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!<§(false);
         }
      }
      
      public function §0"0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§79§(this.§^!P§[this.§^!P§.length - 1]);
         }
      }
      
      public function §79§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'!e§ = §-"?§.§ !N§(param1);
         if(!(_loc4_ && param1))
         {
            this.§9J§.§0"!§.§@!0§(_loc2_);
         }
      }
      
      public function §&",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^!P§ = null;
         }
      }
      
      public function §,!<§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§^!P§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr109:
                        addr70:
                        while(true)
                        {
                           §§push(this.§^!P§.length > 0);
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           continue loop4;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr108:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              this.§0"0§();
                              while(true)
                              {
                                 this.§^!P§.pop();
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 if(_loc2_ || param1)
                                 {
                                    §§goto(addr19);
                                 }
                              }
                           }
                        }
                        §§goto(addr109);
                     }
                     addr19:
                     return;
                     §§goto(addr70);
                  }
                  continue;
               }
               §§goto(addr108);
            }
         }
         §§goto(addr81);
      }
      
      public function §1!E§(param1:Boolean = true) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(!§!!2§.§[E§.§^"#§())
            {
               if(!(_loc3_ && param1))
               {
                  return null;
               }
            }
         }
         if(this.§^!P§ == null)
         {
            if(_loc4_)
            {
               this.§^!P§ = new Vector.<String>();
            }
         }
         var _loc2_:String = this.§9J§.§0"!§.§0z§.§1!l§().§]Z§();
         if(_loc4_)
         {
            if(param1)
            {
               if(_loc4_ || this)
               {
                  this.§^!P§.push(_loc2_);
               }
            }
         }
         return _loc2_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1.keyCode == 90);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     while(true)
                     {
                        §§push(§!!2§.§[E§.§'%§());
                        if(_loc2_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr89:
               }
               loop0:
               for(; §§pop(); §§goto(addr90))
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        this.§,!<§();
                     }
                     addr56:
                  }
                  while(true)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr56);
      }
   }
}
