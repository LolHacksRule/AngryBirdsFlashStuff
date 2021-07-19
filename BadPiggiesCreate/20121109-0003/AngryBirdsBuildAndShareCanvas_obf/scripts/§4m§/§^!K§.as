package §4m§
{
   import §%!0§.§,4§;
   
   public class §^!K§ extends §9g§
   {
       
      
      public function §^!K§(param1:§,4§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1,null);
            do
            {
               §]B§ = "Add pigs";
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         return param1.objects.getPigCount() > 0;
      }
   }
}
