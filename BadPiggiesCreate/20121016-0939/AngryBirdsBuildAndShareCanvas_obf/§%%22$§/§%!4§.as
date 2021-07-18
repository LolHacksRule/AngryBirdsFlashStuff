package §%"$§
{
   import §5!V§.§!w§;
   
   public class §%!4§ extends §[!0§
   {
       
      
      public function §%!4§(param1:§!w§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super(param1,null);
         }
         do
         {
            §9!7§ = "Add birds";
         }
         while(_loc2_);
         
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         return param1.slingshot.getBirdCount() > 0;
      }
   }
}
