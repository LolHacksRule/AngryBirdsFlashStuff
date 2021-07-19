package §,C§
{
   public class §+§
   {
       
      
      protected var §2"!§:Vector.<§+"$§>;
      
      public function §+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               this.§2"!§ = new Vector.<§+"$§>();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §0"+§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_)
            {
               this.§5"'§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
            }
         }
      }
      
      public function §5"'§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:§+"$§;
         (_loc9_ = new §+"$§(param1,param3,param4,param5,param6,param7)).§?t§(param2);
         if(!(_loc11_ && param3))
         {
            this.§2"!§.push(_loc9_);
         }
      }
      
      public function §?-§(param1:String) : §+"$§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§2"!§.length)
            {
               if(!(_loc4_ && this))
               {
                  break;
               }
               while(!_loc3_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr48:
            }
            else if(this.§2"!§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               if(!(_loc4_ && _loc2_))
               {
                  return this.§2"!§[_loc2_];
               }
               §§goto(addr84);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr48);
            }
         }
         return null;
      }
      
      public function §2!?§() : String
      {
         var _loc1_:int = Math.random() * this.§2"!§.length;
         return this.§2"!§[_loc1_].id;
      }
   }
}
