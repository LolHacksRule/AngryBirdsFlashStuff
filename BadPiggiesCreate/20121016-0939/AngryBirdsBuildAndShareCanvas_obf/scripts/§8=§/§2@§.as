package §8=§
{
   public class §2@§ implements §+?§
   {
       
      
      private var §^"4§:§+?§;
      
      private var §2k§:String;
      
      private var §,!2§:§+?§;
      
      public function §2@§(param1:§+?§, param2:§+?§, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§^"4§ = param1;
               while(true)
               {
                  this.§,!2§ = param2;
                  loop2:
                  while(!(_loc5_ && param3))
                  {
                     while(true)
                     {
                        this.§2k§ = param3;
                        if(!(_loc5_ && param3))
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,!2§.update(param1);
         }
         do
         {
            this.§^"4§.setObject(this.§2k§,this.§,!2§.target);
         }
         while(!_loc3_);
         
      }
      
      public function get child() : §+?§
      {
         return this.§,!2§;
      }
      
      public function clone() : §+?§
      {
         return new §2@§(this.§^"4§,this.§,!2§,this.§2k§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §+?§
      {
         return this.§^"4§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
   }
}
