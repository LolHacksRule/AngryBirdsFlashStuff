package §9K§
{
   import flash.utils.Dictionary;
   
   public class §`!4§ extends §!?§
   {
       
      
      private var §"!#§:Dictionary;
      
      private var § do§:§!?§;
      
      public function §`!4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"!#§ = new Dictionary();
            if(!(_loc1_ && _loc1_))
            {
               super();
            }
         }
      }
      
      public function §]! §(param1:String, param2:§!?§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(param2 == null)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr54);
               }
            }
            else
            {
               if(!this.§ do§)
               {
                  if(_loc4_)
                  {
                     this.§ do§ = param2;
                     if(_loc4_ || param2)
                     {
                     }
                     §§goto(addr80);
                  }
               }
               this.§"!#§[param1] = param2;
            }
            addr80:
            return;
         }
         addr54:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§,z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ do§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §,z§
      {
         return this.§ do§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§ do§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §!?§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§"!#§[param1])
            {
               if(_loc3_ || this)
               {
                  return this.§"!#§[param1];
               }
            }
         }
         return this.§ do§;
      }
   }
}
