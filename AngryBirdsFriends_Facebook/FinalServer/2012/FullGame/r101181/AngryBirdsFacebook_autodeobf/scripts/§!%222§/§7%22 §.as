package §!"2§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §7" §
   {
       
      
      private var §!"&§:int = 0;
      
      private var §!z§:Array;
      
      private var §@!o§:Array;
      
      private var §[e§:Array;
      
      public function §7" §()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!z§ = [];
            while(true)
            {
               this.§@!o§ = [];
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super();
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
         §§goto(addr46);
      }
      
      public function §`;§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!z§.push({
               "url":param1,
               "link":param2
            });
         }
         do
         {
            this.§3!?§();
         }
         while(!_loc3_);
         
      }
      
      private function §3!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§!"&§ == 0);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr84:
                     while(true)
                     {
                        §§push(this.§!z§.length > 0);
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr83:
               }
               while(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.§"!G§();
                  }
                  if(!_loc2_)
                  {
                     addr74:
                     break;
                  }
                  §§goto(addr84);
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr74);
      }
      
      private function §"!G§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc1_))
         {
            var _loc5_:*;
            §§push((_loc5_ = this).§!"&§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               _loc5_.§!"&§ = _loc6_;
            }
         }
         var _loc1_:String = this.§!z§[0].url;
         var _loc2_:String = this.§!z§[0].link;
         var _loc3_:§1w§ = this.§4T§(_loc1_,_loc2_);
         var _loc4_:Loader;
         (_loc4_ = _loc3_.§<!v§(_loc1_)).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         if(_loc7_)
         {
            _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
            do
            {
               _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""<§);
            }
            while(_loc8_ && _loc3_);
            
         }
      }
      
      private function §""<§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            this.§!z§.shift();
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§!"&§);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§!"&§ = _loc3_;
               }
               if(!_loc4_)
               {
                  this.§3!?§();
               }
            }
         }
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§!z§.shift();
            if(!(_loc5_ && _loc3_))
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§!"&§);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  _loc2_.§!"&§ = _loc3_;
               }
               if(_loc4_ || _loc3_)
               {
                  addr85:
                  this.§3!?§();
               }
            }
            return;
         }
         §§goto(addr85);
      }
      
      public function §%J§(param1:String, param2:String) : §1w§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1w§ = this.§4T§(param1,param2);
         if(_loc5_)
         {
            if(!_loc3_.§,!6§())
            {
               do
               {
                  this.§`;§(param1,param2);
               }
               while(_loc4_ && _loc3_);
               
               if(!_loc4_)
               {
                  return _loc3_;
                  addr65:
               }
            }
            return _loc3_;
         }
         §§goto(addr65);
      }
      
      private function §4T§(param1:String, param2:String = "") : §1w§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1w§ = this.§@!o§[param1];
         if(!_loc4_)
         {
            if(_loc3_ == null)
            {
               addr38:
               _loc3_ = new §1w§(param2);
               if(!_loc4_)
               {
                  this.§@!o§[param1] = _loc3_;
               }
            }
            return _loc3_;
         }
         §§goto(addr38);
      }
   }
}
