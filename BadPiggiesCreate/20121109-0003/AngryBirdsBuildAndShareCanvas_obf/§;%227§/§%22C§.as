package §;"7§
{
   import flash.utils.Dictionary;
   
   public class §"C§ extends §"!B§
   {
       
      
      private var §%f§:Dictionary;
      
      private var §-d§:§"!B§;
      
      public function §"C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%f§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §6k§(param1:String, param2:§"!B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param2 != null)
            {
               do
               {
                  if(!this.§-d§)
                  {
                     while(_loc4_ || param2)
                     {
                        while(true)
                        {
                           this.§-d§ = param2;
                           addr81:
                           while(true)
                           {
                           }
                        }
                     }
                     addr85:
                     throw new Error("Trying to add a null animation");
                     addr61:
                  }
                  while(true)
                  {
                     this.§%f§[param1] = param2;
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr81);
                  }
               }
               while(!(_loc4_ || param2));
               
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr68);
      }
      
      override public function addFrame(param1:§+!I§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-d§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §+!I§
      {
         return this.§-d§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-d§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"!B§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§%f§[param1])
            {
               if(!_loc2_)
               {
                  §§goto(addr46);
               }
            }
            return this.§-d§;
         }
         addr46:
         return this.§%f§[param1];
      }
   }
}
