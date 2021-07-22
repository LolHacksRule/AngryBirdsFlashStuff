package §8m§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §6§ extends EventDispatcher
   {
       
      
      private var §&!x§:Dictionary;
      
      public function §6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§&!x§ = new Dictionary();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §="F§(param1:String, param2:§7!>§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            if(this.§&!x§[param1])
            {
               if(_loc8_)
               {
                  §§goto(addr31);
               }
            }
            var _loc6_:§4!q§;
            (_loc6_ = new §4!q§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§8!8§);
            if(!(_loc7_ && param1))
            {
               this.§&!x§[param1] = _loc6_;
            }
            do
            {
               _loc6_.play();
            }
            while(!(_loc8_ || param1));
            
            return true;
         }
         addr31:
         return false;
      }
      
      public function §4§(param1:String, param2:§7!>§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            if(this.§&!x§[param1])
            {
               if(!_loc7_)
               {
                  §§goto(addr40);
               }
            }
            var _loc5_:§4!q§;
            (_loc5_ = new §4!q§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§8!8§);
            if(!(_loc7_ && param2))
            {
               this.§&!x§[param1] = _loc5_;
               do
               {
                  _loc5_.play();
               }
               while(!_loc6_);
               
            }
            return true;
         }
         addr40:
         return false;
      }
      
      public function §@!p§(param1:String, param2:§7!>§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            if(this.§&!x§[param1])
            {
               if(_loc7_)
               {
                  return false;
               }
            }
         }
         var _loc5_:§4!q§;
         (_loc5_ = new §4!q§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§8!8§);
         if(_loc7_ || this)
         {
            this.§&!x§[param1] = _loc5_;
            do
            {
               _loc5_.play();
            }
            while(_loc6_ && param2);
            
         }
         return true;
      }
      
      public function §]Z§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!q§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§&!x§[param1])
            {
               addr52:
               _loc2_ = this.§&!x§[param1];
               if(_loc4_)
               {
                  _loc2_.pause();
                  if(_loc4_ || param1)
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         §§goto(addr52);
      }
      
      public function §;A§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!q§ = null;
         if(_loc3_)
         {
            if(this.§&!x§[param1])
            {
               addr36:
               _loc2_ = this.§&!x§[param1];
               if(_loc3_)
               {
                  _loc2_.stop();
                  if(!(_loc4_ && param1))
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         §§goto(addr36);
      }
      
      public function §7I§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!q§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!this.§&!x§[param1])
            {
               return false;
            }
         }
         _loc2_ = this.§&!x§[param1];
         if(!_loc4_)
         {
            _loc2_.dispose();
            while(true)
            {
               §§push(delete this.§&!x§[_loc2_.id]);
               while(true)
               {
                  §§pop();
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
                  §§goto(addr88);
               }
            }
         }
         addr88:
         while(true)
         {
            §§push(true);
            if(!_loc4_)
            {
               break;
            }
            continue loop1;
         }
         return §§pop();
      }
      
      public function §"5§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§&!x§[param1])
            {
               if(!_loc2_)
               {
                  §§push(true);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr30:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr30);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         for(_loc1_ in this.§&!x§)
         {
            if(_loc5_ || this)
            {
               this.§7I§(_loc1_);
            }
         }
      }
      
      private function §8!8§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!q§ = param1.currentTarget as §4!q§;
         if(_loc4_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§8!8§);
            do
            {
               _loc2_.dispose();
               do
               {
                  delete this.§&!x§[_loc2_.id];
                  do
                  {
                     dispatchEvent(param1);
                  }
                  while(!(_loc4_ || _loc3_));
                  
               }
               while(!_loc4_);
               
            }
            while(!_loc4_);
            
         }
      }
   }
}
