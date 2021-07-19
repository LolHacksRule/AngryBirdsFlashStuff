package §69§
{
   public class §!!u§
   {
       
      
      protected var §!"9§:Vector.<§4!e§>;
      
      public function §!!u§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            do
            {
               this.§!"9§ = new Vector.<§4!e§>();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §7-§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            if(!_loc6_)
            {
               this.§!#D§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
            }
         }
      }
      
      public function §!#D§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:§4!e§;
         (_loc9_ = new §4!e§(param1,param3,param4,param5,param6,param7)).§<3§(param2);
         if(_loc11_)
         {
            this.§!"9§.push(_loc9_);
         }
      }
      
      public function getBackground(param1:String) : §4!e§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!"9§.length)
            {
               if(_loc4_ || _loc3_)
               {
                  return null;
               }
               while(_loc3_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr49:
            }
            else if(this.§!"9§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr80);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr49);
            }
         }
         return this.§!"9§[_loc2_];
      }
      
      public function §9#>§() : String
      {
         var _loc1_:int = Math.random() * this.§!"9§.length;
         return this.§!"9§[_loc1_].id;
      }
      
      public function §]!q§() : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!"9§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || _loc2_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            _loc1_.push(this.§!"9§[_loc2_].id.toLowerCase());
            §§goto(addr75);
         }
         return _loc1_;
      }
   }
}
