package §<!V§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §9!3§
   {
       
      
      private var §>P§:int = 0;
      
      private var §^!"§:Array;
      
      private var §]!C§:Array;
      
      private var §5"3§:Array;
      
      public function §9!3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§^!"§ = [];
         }
         while(true)
         {
            this.§]!C§ = [];
            while(_loc1_ || _loc2_)
            {
               super();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function § !3§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§^!"§.push({
               "url":param1,
               "link":param2
            });
            do
            {
               this.§9'§();
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      private function §9'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§>P§ == 0);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr80:
                     while(true)
                     {
                        §§push(this.§^!"§.length > 0);
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        this.§^!Q§();
                     }
                     else
                     {
                        §§goto(addr80);
                     }
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      private function §^!Q§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            var _loc5_:*;
            §§push((_loc5_ = this).§>P§);
            if(!_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc6_:* = §§pop();
            if(!_loc7_)
            {
               _loc5_.§>P§ = _loc6_;
            }
         }
         var _loc1_:String = this.§^!"§[0].url;
         var _loc2_:String = this.§^!"§[0].link;
         var _loc3_:§'"M§ = this.§+^§(_loc1_,_loc2_);
         var _loc4_:Loader;
         (_loc4_ = _loc3_.§ in§(_loc1_)).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         if(!(_loc7_ && _loc1_))
         {
            _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         }
         do
         {
            _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
         }
         while(_loc7_ && _loc1_);
         
      }
      
      private function §2!q§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§^!"§.shift();
            if(!_loc5_)
            {
               §§goto(addr23);
            }
            §§goto(addr75);
         }
         addr23:
         var _loc2_:*;
         §§push((_loc2_ = this).§>P§);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() - 1);
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            _loc2_.§>P§ = _loc3_;
         }
         if(!(_loc5_ && param1))
         {
            addr75:
            this.§9'§();
         }
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§^!"§.shift();
            if(_loc4_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§>P§);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && param1))
               {
                  _loc2_.§>P§ = _loc3_;
               }
               if(!_loc4_)
               {
               }
               §§goto(addr72);
            }
            this.§9'§();
         }
         addr72:
      }
      
      public function §6!U§(param1:String, param2:String) : §'"M§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'"M§ = this.§+^§(param1,param2);
         if(!(_loc5_ && param1))
         {
            if(_loc3_.§%!h§())
            {
               if(!_loc5_)
               {
                  return _loc3_;
               }
               addr60:
               while(true)
               {
               }
               addr60:
            }
            while(true)
            {
               this.§ !3§(param1,param2);
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr60);
            }
            return _loc3_;
         }
         §§goto(addr60);
      }
      
      private function §+^§(param1:String, param2:String = "") : §'"M§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'"M§ = this.§]!C§[param1];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ == null)
            {
               addr43:
               _loc3_ = new §'"M§(param2);
               if(!_loc4_)
               {
                  this.§]!C§[param1] = _loc3_;
               }
            }
            return _loc3_;
         }
         §§goto(addr43);
      }
   }
}
