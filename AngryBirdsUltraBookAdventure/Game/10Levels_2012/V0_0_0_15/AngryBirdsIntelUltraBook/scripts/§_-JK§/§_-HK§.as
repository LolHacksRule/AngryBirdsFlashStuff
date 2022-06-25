package §_-JK§
{
   public class §_-HK§
   {
       
      
      protected var §_-c§:Number;
      
      protected var §_-l1§:Number;
      
      protected var §_-XE§:Number;
      
      protected var §_-iy§:Boolean;
      
      public function §_-HK§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            loop0:
            do
            {
               this.§_-c§ = param1;
               while(true)
               {
                  this.§_-l1§ = param2;
                  while(!_loc5_)
                  {
                     this.§_-XE§ = param3;
                     do
                     {
                        this.§_-iy§ = param4;
                     }
                     while(_loc5_ && this);
                     
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc6_ || param3));
            
         }
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function get §_-SR§() : Boolean
      {
         return this.§_-iy§;
      }
   }
}
