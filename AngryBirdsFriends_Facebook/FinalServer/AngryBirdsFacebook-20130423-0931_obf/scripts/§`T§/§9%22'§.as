package §`T§
{
   import flash.utils.getTimer;
   
   public class §9"'§
   {
       
      
      private var §0"D§:Number;
      
      private var §,"Y§:Number;
      
      public function §9"'§(param1:Number)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§@Q§ = param1;
         }
         while(_loc3_ && param1);
         
      }
      
      public function set §@Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,"Y§ = getTimer();
         }
         do
         {
            this.§0"D§ = param1;
         }
         while(!_loc3_);
         
      }
      
      public function get §?!;§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(getTimer() - this.§,"Y§);
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§0"D§);
         if(!_loc2_)
         {
            return §§pop() + _loc1_;
         }
      }
   }
}
