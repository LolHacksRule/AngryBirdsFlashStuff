package §0!_§
{
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   
   public class §7B§ extends §<"6§
   {
       
      
      private var §=!Q§:§!!G§;
      
      private var §]"#§:String;
      
      public function §7B§(param1:String, param2:§!!G§, param3:Number)
      {
         super(param3);
         this.§]"#§ = param1;
         this.§=!Q§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §%;§.§ !-§(this.§]"#§,this.§=!Q§,_loc2_);
      }
   }
}
