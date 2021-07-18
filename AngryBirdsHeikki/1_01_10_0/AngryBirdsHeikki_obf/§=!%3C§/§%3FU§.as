package §=!<§
{
   import flash.utils.Dictionary;
   
   public class §?U§ extends §!x§
   {
       
      
      private var §,!%§:Dictionary;
      
      private var §6e§:§!x§;
      
      public function §?U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,!%§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §7f§(param1:String, param2:§!x§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(param2 != null)
            {
               while(true)
               {
                  if(!this.§6e§)
                  {
                     if(_loc3_ || param1)
                     {
                        this.§6e§ = param2;
                     }
                     loop1:
                     while(_loc3_ || _loc3_)
                     {
                        if(!_loc3_)
                        {
                           throw new Error("Trying to add a null animation");
                        }
                        addr89:
                        while(true)
                        {
                           this.§,!%§[param1] = param2;
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr28);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr93);
      }
      
      override public function addFrame(param1:§8!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6e§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §8!!§
      {
         return this.§6e§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§6e§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §!x§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,!%§[param1])
            {
               if(_loc2_)
               {
                  §§goto(addr45);
               }
            }
            return this.§6e§;
         }
         addr45:
         return this.§,!%§[param1];
      }
   }
}
