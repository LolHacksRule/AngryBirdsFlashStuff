package §6!B§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §7!L§ extends EventDispatcher
   {
       
      
      private var §^!S§:Dictionary;
      
      public function §7!L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§^!S§ = new Dictionary();
         }
         while(_loc1_);
         
      }
      
      public function §#W§(param1:String, param2:§,!p§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(this.§^!S§[param1])
            {
               if(!(_loc8_ && param3))
               {
                  §§goto(addr40);
               }
            }
            var _loc6_:§&Q§;
            (_loc6_ = new §&Q§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§4"6§);
            if(_loc7_ || param1)
            {
               this.§^!S§[param1] = _loc6_;
            }
            do
            {
               _loc6_.play();
            }
            while(_loc8_);
            
            return true;
         }
         addr40:
         return false;
      }
      
      public function §8W§(param1:String, param2:§,!p§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            if(this.§^!S§[param1])
            {
               if(!_loc7_)
               {
                  return false;
               }
            }
         }
         var _loc5_:§&Q§;
         (_loc5_ = new §&Q§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§4"6§);
         if(!(_loc7_ && param2))
         {
            this.§^!S§[param1] = _loc5_;
            do
            {
               _loc5_.play();
            }
            while(_loc7_ && param2);
            
         }
         return true;
      }
      
      public function §2!9§(param1:String, param2:§,!p§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§^!S§[param1])
            {
               if(_loc6_ || param1)
               {
                  return false;
               }
            }
         }
         var _loc5_:§&Q§;
         (_loc5_ = new §&Q§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§4"6§);
         if(_loc6_)
         {
            this.§^!S§[param1] = _loc5_;
         }
         do
         {
            _loc5_.play();
         }
         while(!(_loc6_ || param2));
         
         return true;
      }
      
      public function §8!&§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&Q§ = null;
         if(_loc4_ || this)
         {
            if(this.§^!S§[param1])
            {
               addr42:
               _loc2_ = this.§^!S§[param1];
               if(!_loc3_)
               {
                  _loc2_.pause();
                  if(_loc4_)
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         §§goto(addr42);
      }
      
      public function §?"4§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&Q§ = null;
         if(_loc3_ || _loc2_)
         {
            if(this.§^!S§[param1])
            {
               §§goto(addr51);
            }
            §§goto(addr70);
         }
         addr51:
         _loc2_ = this.§^!S§[param1];
         if(_loc3_)
         {
            _loc2_.stop();
            if(!(_loc3_ || _loc3_))
            {
               addr70:
               return false;
            }
         }
         return true;
      }
      
      public function §]!n§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&Q§ = null;
         if(_loc4_)
         {
            if(this.§^!S§[param1])
            {
               §§goto(addr27);
            }
            §§goto(addr98);
         }
         addr27:
         _loc2_ = this.§^!S§[param1];
         if(_loc4_ || param1)
         {
            _loc2_.dispose();
         }
         else if(true)
         {
            addr98:
            return false;
         }
         §§push(delete this.§^!S§[_loc2_.id]);
         do
         {
            §§pop();
            return true;
         }
         while(_loc3_ && _loc3_);
         
         return §§pop();
      }
      
      public function §;"@§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§^!S§[param1])
            {
               if(!_loc2_)
               {
                  addr41:
                  §§push(true);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr50);
         }
         §§goto(addr41);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc3_:* = this.§^!S§;
         for(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               this.§]!n§(_loc1_);
            }
         }
      }
      
      private function §4"6§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&Q§ = param1.currentTarget as §&Q§;
         if(!_loc3_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§4"6§);
            while(true)
            {
               _loc2_.dispose();
            }
            addr84:
         }
         loop1:
         while(true)
         {
            delete this.§^!S§[_loc2_.id];
            while(_loc4_)
            {
               dispatchEvent(param1);
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop1;
               }
               §§goto(addr84);
            }
         }
      }
   }
}
