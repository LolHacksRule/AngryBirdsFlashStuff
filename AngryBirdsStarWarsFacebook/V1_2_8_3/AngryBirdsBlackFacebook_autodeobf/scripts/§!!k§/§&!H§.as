package §!!k§
{
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §&!H§ extends §?!`§
   {
       
      
      private var §9!G§:§0!B§;
      
      public function §&!H§(param1:String, param2:§0!B§, param3:Number)
      {
         super(param1,param3);
         this.§9!G§ = param2;
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
         return §;m§.§7M§(name,this.§9!G§,_loc2_);
      }
   }
}
