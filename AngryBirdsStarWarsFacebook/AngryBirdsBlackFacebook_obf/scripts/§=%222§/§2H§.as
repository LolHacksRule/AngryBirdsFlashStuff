package §="2§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §2H§ extends EventDispatcher
   {
       
      
      private var §&M§:Dictionary;
      
      public function §2H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.§&M§ = new Dictionary();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §8c§(param1:String, param2:§4!5§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            if(this.§&M§[param1])
            {
               if(_loc7_)
               {
                  return false;
               }
            }
         }
         var _loc6_:§'!4§;
         (_loc6_ = new §'!4§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§5$§);
         if(_loc7_)
         {
            this.§&M§[param1] = _loc6_;
            do
            {
               _loc6_.play();
            }
            while(_loc8_ && param2);
            
         }
         return true;
      }
      
      public function §@y§(param1:String, param2:§4!5§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§&M§[param1])
            {
               if(_loc7_)
               {
                  §§goto(addr26);
               }
            }
            var _loc5_:§'!4§;
            (_loc5_ = new §'!4§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§5$§);
            if(_loc7_ || this)
            {
               this.§&M§[param1] = _loc5_;
               do
               {
                  _loc5_.play();
               }
               while(_loc6_);
               
            }
            return true;
         }
         addr26:
         return false;
      }
      
      public function §8#6§(param1:String, param2:§4!5§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§&M§[param1])
            {
               if(!(_loc6_ && param2))
               {
                  return false;
               }
            }
         }
         var _loc5_:§'!4§;
         (_loc5_ = new §'!4§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§5$§);
         if(_loc7_)
         {
            this.§&M§[param1] = _loc5_;
            do
            {
               _loc5_.play();
            }
            while(_loc6_ && param2);
            
         }
         return true;
      }
      
      public function §4!]§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'!4§ = null;
         if(_loc3_ || param1)
         {
            if(this.§&M§[param1])
            {
               §§goto(addr41);
            }
            §§goto(addr75);
         }
         addr41:
         _loc2_ = this.§&M§[param1];
         if(!(_loc4_ && this))
         {
            _loc2_.pause();
            if(!(_loc3_ || _loc2_))
            {
               addr75:
               return false;
            }
         }
         return true;
      }
      
      public function §`k§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'!4§ = null;
         if(!(_loc3_ && this))
         {
            if(this.§&M§[param1])
            {
               §§goto(addr42);
            }
            §§goto(addr71);
         }
         addr42:
         _loc2_ = this.§&M§[param1];
         if(_loc4_ || param1)
         {
            _loc2_.stop();
            if(!_loc4_)
            {
               addr71:
               return false;
            }
         }
         return true;
      }
      
      public function §@!Z§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'!4§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!this.§&M§[param1])
            {
               return false;
            }
         }
         _loc2_ = this.§&M§[param1];
         if(!_loc4_)
         {
            _loc2_.dispose();
         }
         §§push(delete this.§&M§[_loc2_.id]);
         do
         {
            §§pop();
            return true;
         }
         while(!(_loc3_ || _loc3_));
         
         return §§pop();
      }
      
      public function §[!n§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§&M§[param1])
            {
               if(_loc3_)
               {
                  addr41:
                  §§push(true);
                  if(_loc3_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr41);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         for(_loc1_ in this.§&M§)
         {
            if(!(_loc4_ && _loc1_))
            {
               this.§@!Z§(_loc1_);
            }
         }
      }
      
      private function §5$§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'!4§ = param1.currentTarget as §'!4§;
         if(!_loc4_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§5$§);
            loop0:
            while(true)
            {
               _loc2_.dispose();
               do
               {
                  delete this.§&M§[_loc2_.id];
                  continue loop0;
               }
               while(_loc4_ && param1);
               
            }
         }
      }
   }
}
