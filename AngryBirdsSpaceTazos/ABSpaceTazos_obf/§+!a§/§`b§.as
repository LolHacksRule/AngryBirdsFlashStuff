package §+!a§
{
   public class §`b§
   {
       
      
      protected var §1t§:Vector.<§@!_§>;
      
      public function §`b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               this.§1t§ = new Vector.<§@!_§>();
            }
            while(_loc1_);
            
         }
      }
      
      public function §%'§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            if(_loc5_)
            {
               this.§>!`§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
            }
         }
      }
      
      public function §>!`§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:§@!_§;
         (_loc9_ = new §@!_§(param1,param3,param4,param5,param6,param7)).§@!o§(param2);
         if(_loc10_)
         {
            this.§1t§.push(_loc9_);
         }
      }
      
      public function getBackground(param1:String) : §@!_§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§1t§.length)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return null;
               }
               loop2:
               while(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr49:
            }
            else if(this.§1t§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr85);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr49);
            }
         }
         return this.§1t§[_loc2_];
      }
      
      public function §2!v§() : String
      {
         var _loc1_:int = Math.random() * this.§1t§.length;
         return this.§1t§[_loc1_].id;
      }
   }
}
